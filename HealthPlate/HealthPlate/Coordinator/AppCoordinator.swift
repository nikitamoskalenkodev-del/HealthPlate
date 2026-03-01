//
//  AppCoordinator.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//

import SwiftUI
import Combine

@MainActor
final class AppCoordinator: ObservableObject {

    enum Route: Hashable {
        case login
        case signup
        case home
        case addFood
        case history
        case profile
    }

    @Published var navigationPath = NavigationPath()
    @Published var isLoggedIn = false
    @Published var currentUserId: String?

    private let authService = AuthService()

    init() {
        checkAuthStatus()
    }

    private func checkAuthStatus() {
        if authService.currentUser != nil {
            isLoggedIn = true
        } else {
            isLoggedIn = false
        }
    }

    func login(email: String, password: String) async {
        await authService.signIn(email: email, password: password)
        if authService.currentUser != nil {
            isLoggedIn = true
        }
    }

    func signup(email: String, password: String) async {
        await authService.signUp(email: email, password: password)
        if authService.currentUser != nil {
            isLoggedIn = true
        }
    }

    func logout() {
        authService.signOut()
        isLoggedIn = false
        navigationPath = NavigationPath()
        currentUserId = nil
    }

    func navigate(to route: Route) {
        navigationPath.append(route)
    }

    func pop() {
        navigationPath.removeLast()
    }

    func popToRoot() {
        navigationPath = NavigationPath()
    }

    @ViewBuilder
    func rootView() -> some View {
        if isLoggedIn {
            mainView()
        } else {
            authView()
        }
    }

    @ViewBuilder
    private func mainView() -> some View {
        NavigationStack(path: .constant(navigationPath)) {
            HealthPlateHomeView(coordinator: self)
                .navigationDestination(for: Route.self) { [weak self] route in
                    self?.routeView(for: route)
                }
        }
    }

    @ViewBuilder
    private func authView() -> some View {
        NavigationStack(path: .constant(navigationPath))  {
            HealthPlateLoginView(coordinator: self)
                .navigationDestination(for: Route.self) { [weak self] route in
                    self?.routeView(for: route)
                }
        }
    }

    @ViewBuilder
    private func routeView(for route: Route) -> some View {
        switch route {
        case .login:
            HealthPlateLoginView(coordinator: self)
        case .signup:
            HealthPlateSignupView(coordinator: self)
        case .home:
            HealthPlateHomeView(coordinator: self)
        case .addFood:
            HealthPlateAddFoodView()
        case .history:
            HealthPlateHistoryView()
        case .profile:
            HealthPlateProfileView(coordinator: self)
        }
    }
}
