//
//  LoginModuleBuilder.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import SwiftUI

struct LoginModuleBuilder {
    static func build(isLoggedIn: Binding<Bool>) -> some View {
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let router = LoginRouter(isLoggedIn: isLoggedIn)

        presenter.interactor = interactor
        presenter.router = router

        return LoginView(presenter: presenter)
    }
}
