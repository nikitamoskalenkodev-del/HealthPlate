//
//  HealthPlateHomeView.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//

import SwiftUI

struct HealthPlateHomeView: View {
    let coordinator: AppCoordinator

    var body: some View {
        VStack {
            Text("HealthPlate Home")
                .font(.title)

            Text("Welcome back!")
                .font(.subheadline)
                .foregroundStyle(.gray)

            Spacer()

            Button(action: {
                coordinator.logout()
            }) {
                Text("Logout")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
        }
        .padding()
    }
}
