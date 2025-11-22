//
//  HomeView.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import SwiftUI

struct HomeView: View {
    var user: UserProfile
    @State private var vm = CatBreedViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                Text("Greetings, \(user.name)")
                    .font(.title2)
                    .padding(.horizontal)
                
                if vm.isLoading {
                    ProgressView()
                } else {
                    List(vm.breeds) { breed in
                        BreedRowView(breed: breed)
                    }
                }
            }
            .navigationTitle("Cat Breeds")
            .task {
                await vm.fetchBreeds()
            }
        }
    }
}
