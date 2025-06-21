//
//  HomeRouter.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

protocol HomeRouterProtocol {
    func navigateToAnimalDetail(_ animal: Animal)
}

class HomeRouter: HomeRouterProtocol {
    func navigateToAnimalDetail(_ animal: Animal) {
        // Add navigation logic here, maybe via environment or coordinator
        print("Navigate to detail for: \(animal.name)")
    }
}
