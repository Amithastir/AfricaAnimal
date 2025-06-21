//
//  HomeModuleBuilder.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import SwiftUI

struct HomeModuleBuilder {
    static func build() -> some View {
        let interactor = HomeInteractor()
        let router = HomeRouter()
        let presenter = HomePresenter(interactor: interactor, router: router)
        return HomeView(presenter: presenter)
    }
}
