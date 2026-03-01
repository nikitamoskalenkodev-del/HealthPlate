//
//  HealthPlateLoginView.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//

import SwiftUI

struct HealthPlateLoginView: View {
    let coordinator: AppCoordinator
    @State private var email = ""
    @State private var password = ""
    @State private var isLoading = false

    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 8) {
                Text("HealthPlate")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Track your nutrition")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            .padding(.bottom, 30)

            VStack(spacing: 12) {
                TextField("Email", text: $email)
                    .textFieldStyle(.roundedBorder)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.emailAddress)

                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)

                Button(action: {
                    isLoading = true
                    Task {
                        await coordinator.login(email: email, password: password)
                        isLoading = false
                    }
                }) {
                    if isLoading {
                        HStack {
                            ProgressView()
                                .progressViewStyle(.circular)
                                .scaleEffect(0.8)
                            Text("Logging in...")
                        }
                    } else {
                        Text("Login")
                            .frame(maxWidth: .infinity)
                    }
                }
                .buttonStyle(.borderedProminent)
                .disabled(isLoading)
            }

            HStack(spacing: 8) {
                Text("Don't have an account?")
                    .font(.caption)

                NavigationLink("Sign Up", value: AppCoordinator.Route.signup)
                    .font(.caption)
                    .fontWeight(.semibold)
            }

            Spacer()
        }
        .padding()
    }
}
