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

    @Published var animals: [Animal] = []
    @Published var selectedIndex: Int = 0
    let carouselImages = ["cover-lion", "cover-gorilla", "cover-zebra","cover-giraffe","cover-elephant","cover-cheetah","cover-buffalo"]

    init(interactor: HomeInteractorProtocol, router: HomeRouterProtocol) {
        self.interactor = interactor
        self.router = router
        loadAnimals()
    }

    func loadAnimals() {
        animals = interactor.fetchAnimals()
    }

    func didSelectAnimal(_ animal: Animal) {
        router.navigateToAnimalDetail(animal)
    }
}
