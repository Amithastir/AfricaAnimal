//
//  SettingModuleBuilder.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//

import SwiftUI
struct SettingsModuleBuilder {
    static func build() -> some View {
        let interactor = SettingsInteractor()
        let router = SettingsRouter()
        let presenter = SettingsPresenter(interactor: interactor,router: router)
        return SettingsView(presenter: presenter)
    }
}
