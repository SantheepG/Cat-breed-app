//
//  NetworkService.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import Foundation

final class NetworkService {
    static let shared = NetworkService()
    
    private init() {}
    
    func fetchBreeds() async throws -> [CatBreed] {
        let url = URL(string: "https://api.thecatapi.com/v1/breeds")!
        
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([CatBreed].self, from: data)
    }
}
