//
//  OnboardingViewModel.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import SwiftUI
import SwiftData

@Observable
class OnboardingViewModel {
    var name: String = ""
    
    func completeOnboarding(context: ModelContext) {
        let user = UserProfile(name: name, hasOnboarded: true)
        context.insert(user)
    }
}
