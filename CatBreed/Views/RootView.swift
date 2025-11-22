//
//  RootView.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import SwiftUI
import SwiftData

struct RootView: View {
    @Query var profile: [UserProfile]

    var body: some View {
        if let user = profile.first, user.hasOnboarded {
            HomeView(user: user)
        } else {
            OnboardingView()
        }
    }
}
