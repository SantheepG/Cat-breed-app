//
//  CatBreedApp.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import SwiftUI
import SwiftData

@main
struct CatBreedsApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()   // handles onboarding logic
        }
        .modelContainer(for: UserProfile.self)
    }
}
