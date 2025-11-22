//
//  OnboardingView.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import SwiftUI
import SwiftData

struct OnboardingView: View {
    @Environment(\.modelContext) private var context
    @State private var vm = OnboardingViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome!")
                .font(.largeTitle)
                .bold()
            
            Text("Enter your name")
            
            TextField("Your name", text: $vm.name)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)
            
            Button("Continue") {
                vm.completeOnboarding(context: context)
            }
            .buttonStyle(.borderedProminent)
            .disabled(vm.name.isEmpty)
        }
        .padding()
    }
}
