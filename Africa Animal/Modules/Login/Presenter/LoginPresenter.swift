//
//  Untitled.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/17/25.
//
import Combine

class LoginPresenter: ObservableObject {
    @Published var email = "test@example.com"
    @Published var password = "123456"

    var interactor: LoginInteractorProtocol?
    var router: LoginRouterProtocol?

    func loginTapped() {
        // Do validation here...
        router?.navigateToHome()
    }

    func forgotPasswordTapped() {
        // Not implemented
    }

    func signUpTapped() {
        // Not implemented
    }
}

