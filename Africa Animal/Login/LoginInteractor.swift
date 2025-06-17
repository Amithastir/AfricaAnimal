//
//  LoginInteractor.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/17/25.
//

class LoginInteractor: LoginInteractorProtocol {
    var presenter: LoginInteractorOutputProtocol?

    func login(email: String, password: String) {
        // Handle login logic
        if email == "test@example.com" && password == "123456" {
            presenter?.loginSucceeded()
        } else {
            presenter?.loginFailed(error: "Invalid credentials")
        }
    }
}
