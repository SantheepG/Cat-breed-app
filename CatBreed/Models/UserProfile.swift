//
//  UserProfile.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import SwiftData

@Model
final class UserProfile {
    var name: String
    var hasOnboarded: Bool
    
    init(name: String, hasOnboarded: Bool = false) {
        self.name = name
        self.hasOnboarded = hasOnboarded
    }
}
