//
//  Untitled.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//

import SwiftUI

struct WatchModuleBuilder {
    static func build() -> some View {
        let interactor = WatchInteractor()
        let router = WatchRouter()
        let presenter = WatchPresenter(interactor: interactor, router: router)
        return WatchView(presenter: presenter)
    }
}
