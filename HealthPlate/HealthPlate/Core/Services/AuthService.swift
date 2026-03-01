//
//  AuthService.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//

import Firebase
import FirebaseAuth
import Combine

enum AuthError: LocalizedError {
    case invalidEmail
    case weakPassword
    case emailAlreadyInUse
    case userNotFound
    case wrongPassword
    case unknown(String)

    var errorDescription: String? {
        switch self {
        case .invalidEmail:
            return "Invalid email address"
        case .weakPassword:
            return "Password is too weak"
        case .emailAlreadyInUse:
            return "Email already registered"
        case .userNotFound:
            return "User not found"
        case .wrongPassword:
            return "Wrong password"
        case .unknown(let message):
            return message
        }
    }
}

@MainActor
class AuthService: ObservableObject {
    @Published var currentUser: User?
    @Published var isLoading = false
    @Published var error: AuthError?

    private var authStateHandle: AuthStateDidChangeListenerHandle?

    init() {
        setupAuthStateListener()
    }

    // MARK: - Auth State

    private func setupAuthStateListener() {
        authStateHandle = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            self?.currentUser = user
        }
    }

    // MARK: - Sign Up

    func signUp(email: String, password: String) async {
        isLoading = true
        error = nil

        do {
            let result = try await Auth.auth().createUser(
                withEmail: email,
                password: password
            )
            self.currentUser = result.user
        } catch {
            self.error = mapAuthError(error)
        }

        isLoading = false
    }

    // MARK: - Sign In

    func signIn(email: String, password: String) async {
        isLoading = true
        error = nil

        do {
            let result = try await Auth.auth().signIn(
                withEmail: email,
                password: password
            )
            self.currentUser = result.user
        } catch {
            self.error = mapAuthError(error)
        }

        isLoading = false
    }

    // MARK: - Sign Out

    func signOut() {
        do {
            try Auth.auth().signOut()
            self.currentUser = nil
        } catch {
            self.error = mapAuthError(error)
        }
    }

    // MARK: - Password Reset

    func resetPassword(email: String) async {
        isLoading = true
        error = nil

        do {
            try await Auth.auth().sendPasswordReset(withEmail: email)
        } catch {
            self.error = mapAuthError(error)
        }

        isLoading = false
    }

    // MARK: - Helpers

    private func mapAuthError(_ error: Error) -> AuthError {
        if let authError = error as? NSError {
            switch authError.code {
            case AuthErrorCode.invalidEmail.rawValue:
                return .invalidEmail
            case AuthErrorCode.weakPassword.rawValue:
                return .weakPassword
            case AuthErrorCode.emailAlreadyInUse.rawValue:
                return .emailAlreadyInUse
            case AuthErrorCode.userNotFound.rawValue:
                return .userNotFound
            case AuthErrorCode.wrongPassword.rawValue:
                return .wrongPassword
            default:
                return .unknown(authError.localizedDescription)
            }
        }
        return .unknown(error.localizedDescription)
    }

    deinit {
        if let handle = authStateHandle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
}
