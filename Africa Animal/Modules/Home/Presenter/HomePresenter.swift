//
//  HomePresenter.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import SwiftUI

class HomePresenter: ObservableObject {
    private let interactor: HomeInteractorProtocol
    private let router: HomeRouterProtocol
    @Published var selectedAnimal: Animal?

    @Published var animals: [Animal] = []
    @Published var carouselImages: [String] = []
    @Published var selectedIndex: Int = 0

    init(interactor: HomeInteractorProtocol, router: HomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
        loadAnimals()
        loadCovers()

    }

    func loadAnimals() {
        animals = interactor.fetchAnimals()
    }
    
    func loadCovers() {
          carouselImages = interactor.fetchCovers().map { $0.name }
      }

    func didSelectAnimal(_ animal: Animal) {
           selectedAnimal = animal
           router.navigateToAnimalDetail(animal)
    }
}
