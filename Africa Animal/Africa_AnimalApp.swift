//
//  Africa_AnimalApp.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/14/25.
//

import SwiftUI

@main
struct Africa_AnimalApp: App {
  
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .modelContainer(for: FavoriteAnimal.self)

    }
}
