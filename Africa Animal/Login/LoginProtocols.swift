//
//  LoginProtocols.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/17/25.
//

protocol LoginInteractorProtocol {
    func login(email: String, password: String)
}

protocol LoginInteractorOutputProtocol {
    func loginSucceeded()
    func loginFailed(error: String)
}

protocol LoginRouterProtocol {
    func navigateToForgotPassword()
    func navigateToSignUp()
}
