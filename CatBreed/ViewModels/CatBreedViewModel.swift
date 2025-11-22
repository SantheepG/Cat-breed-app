//
//  CatBreedViewModel.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import SwiftUI

@Observable
class CatBreedViewModel {
    var breeds: [CatBreed] = []
    var isLoading = false
    var errorMessage: String?
    
    func fetchBreeds() async {
        isLoading = true
        do {
            breeds = try await NetworkService.shared.fetchBreeds()
        } catch {
            errorMessage = "Failed to fetch breeds"
        }
        isLoading = false
    }
}
