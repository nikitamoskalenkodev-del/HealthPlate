//
//  HealthPlateApp.swift
//  HealthPlate
//
//  Created by Nikita Moskalenko on 1.03.26.
//

import SwiftUI
import SwiftData
import FirebaseCore

@main
struct HealthPlateApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @StateObject private var authService = AuthService()
    @StateObject private var coordinator = AppCoordinator()

    let modelContainer: ModelContainer

    init() {
        do {
            let schema = Schema([
                UserProfile.self,
                MealEntry.self,
                Food.self,
            ])
            let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
            self.modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not initialize SwiftData: \(error)")
        }
    }

    var body: some Scene {
        WindowGroup {
            Group {
                if authService.currentUser != nil {
                    Text("✅ Authenticated - Home View (coming soon)")
                        .font(.headline)
                } else {
                    Text("❌ Not Authenticated - Login/Signup View (coming soon)")
                        .font(.headline)
                }
            }
            .modelContainer(modelContainer)
            .environmentObject(authService)
            .environmentObject(coordinator)
        }
    }
}
