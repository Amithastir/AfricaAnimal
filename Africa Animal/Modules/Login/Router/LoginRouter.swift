//
//  LoginRouter.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/17/25.
//
import SwiftUI
class LoginRouter: LoginRouterProtocol {
    @Binding var isLoggedIn: Bool

        init(isLoggedIn: Binding<Bool>) {
            self._isLoggedIn = isLoggedIn
        }

        func navigateToHome() {
            isLoggedIn = true
        }
        func navigateToForgotPassword() {
            // Navigate to Forgot Password screen
        }
    
        func navigateToSignUp() {
            // Navigate to Sign Up screen
        }
}

