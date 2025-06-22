//
//  Video 2.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//
import SwiftUI

struct Video: Identifiable, Decodable {
    let id: String
    let name: String
    let headline: String
    var thumbnailImage: String { id }
}
