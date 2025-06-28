//
//  FavoriteAnimal.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/28/25.
//

import SwiftData

@Model
final class FavoriteAnimal {
    @Attribute(.unique) var id: String
    var name: String
    var headline: String
    var image: String

    init(id: String, name: String, headline: String, image: String) {
        self.id = id
        self.name = name
        self.headline = headline
        self.image = image
    }
}
