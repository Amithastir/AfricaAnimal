//
//  AnimalDetailPresenter.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/28/25.
//

import Foundation
class AnimalDetailPresenter: ObservableObject {
    let animal: Animal

    init(animal: Animal) {
        self.animal = animal
    }
}

