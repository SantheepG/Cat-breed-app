//
//  BreedRowView.swift
//  CatBreed
//
//  Created by Santheep Ganeswaran on 2025-11-22.
//

import SwiftUI

struct BreedRowView: View {
    let breed: CatBreed
    
    var imageURL: URL? {
        if let id = breed.referenceImageId {
            return URL(string: "https://cdn2.thecatapi.com/images/\(id).jpg")
        }
        return nil
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            
            AsyncImage(url: imageURL) { phase in
                switch phase {
                case .success(let image):
                    image.resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                default:
                    Rectangle()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: 80, height: 80)
                        .cornerRadius(10)
                }
            }
            
            VStack(alignment: .leading, spacing: 6) {
                Text(breed.name)
                    .font(.headline)
                
                Text("Origin: \(breed.origin)")
                    .font(.subheadline)
                
                Text("Life span: \(breed.lifeSpan) years")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(breed.description)
                    .font(.caption)
                    .lineLimit(3)
            }
        }
        .padding(.vertical, 8)
    }
}
