//
//  HomeInteractor.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import Foundation

protocol HomeInteractorProtocol {
    func fetchAnimals() -> [Animal]
    func fetchCovers() -> [Cover]
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
    func fetchCovers() -> [Cover] {
        guard let url = Bundle.main.url(forResource: "covers", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let covers = try? JSONDecoder().decode([Cover].self, from: data) else {
            return []
        }
        return covers
    }
}
