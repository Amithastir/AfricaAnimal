//
//  Animal.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import Foundation

struct Animal: Identifiable, Decodable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}

struct Cover: Identifiable, Decodable {
    let id: Int
    let name: String
}

