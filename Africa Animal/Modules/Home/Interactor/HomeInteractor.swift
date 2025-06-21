//
//  HomeInteractor.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import Foundation

protocol HomeInteractorProtocol {
    func fetchAnimals() -> [Animal]
}

class HomeInteractor: HomeInteractorProtocol {
    func fetchAnimals() -> [Animal] {
        guard let url = Bundle.main.url(forResource: "animals", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let animals = try? JSONDecoder().decode([Animal].self, from: data) else {
            return []
        }
        return animals
    }
}
