//
//  CatBreed.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import Foundation

struct CatBreed: Identifiable, Decodable {
    let id: String
    let name: String
    let origin: String
    let description: String
    let lifeSpan: String
    let referenceImageId: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case origin
        case description
        case lifeSpan = "life_span"
        case referenceImageId = "reference_image_id"
    }
}
