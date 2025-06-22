//
//  SettingsPresenter.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//

import SwiftUI

class SettingsPresenter: ObservableObject {
    private let interactor: SettingsInteractorProtocols
    private let router: SettingsRouterProtocol

   
    init(interactor: SettingsInteractorProtocols,router: SettingsRouterProtocol) {
        self.interactor = interactor
        self.router = router
    }
}
