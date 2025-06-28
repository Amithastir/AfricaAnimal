//
//  AnimalDetailModuleBuilder.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/28/25.
//

import SwiftUICore

struct AnimalDetailModuleBuilder {
    static func build(with animal: Animal) -> some View {
        let presenter = AnimalDetailPresenter(animal: animal)
        return AnimalDetailView(presenter: presenter)
    }
}
