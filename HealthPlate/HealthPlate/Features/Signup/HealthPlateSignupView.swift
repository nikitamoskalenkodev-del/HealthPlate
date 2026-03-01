//
//  HealthPlateSignupView.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//

import SwiftUI

struct HealthPlateSignupView: View {
    let coordinator: AppCoordinator
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var isLoading = false

    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 8) {
                Text("Create Account")
                    .font(.title2)
                    .fontWeight(.bold)

                Text("Join HealthPlate")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            .padding(.bottom, 20)

            VStack(spacing: 12) {
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)

                SecureField("Confirm Password", text: $confirmPassword)
                    .textFieldStyle(.roundedBorder)

                Button(action: {
                    isLoading = true
                    Task {
                        await coordinator.signup(email: email, password: password)
                        isLoading = false
                    }
                }) {
                    if isLoading {
                        HStack {
                            ProgressView()
                                .progressViewStyle(.circular)
                                .scaleEffect(0.8)
                            Text("Creating account...")
                        }
                    } else {
                        Text("Sign Up")
                            .frame(maxWidth: .infinity)
                    }
                }
                .buttonStyle(.borderedProminent)
                .disabled(isLoading || password != confirmPassword)
            }

            Spacer()
        }
        .padding()
    }
}
