//
//  Untitled.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/17/25.
//
import Combine

class LoginPresenter: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    var interactor: LoginInteractorProtocol?
    var router: LoginRouterProtocol?

    func loginTapped() {
        interactor?.login(email: email, password: password)
    }

    func forgotPasswordTapped() {
        router?.navigateToForgotPassword()
    }

    func signUpTapped() {
        router?.navigateToSignUp()
    }
}

