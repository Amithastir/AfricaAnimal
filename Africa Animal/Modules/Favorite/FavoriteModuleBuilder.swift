//
//  FavoriteModuleBuilder.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/28/25.
//

import SwiftUI

struct FavoriteModuleBuilder {
    static func build() -> some View {
//        let interactor = FavoriteInteractor()
  //      let router = FavoriteRouter()
        let presenter = FavoritePresenter()
        return FavoriteView(presenter: presenter)
    }
}
