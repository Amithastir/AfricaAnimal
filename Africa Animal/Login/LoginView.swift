//
//  LoginView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/17/25.
//
import SwiftUI

struct LoginView: View {
    @ObservedObject var presenter: LoginPresenter

    var body: some View {
        VStack(spacing: 20) {
            Spacer()

            // Centered Welcome Text
            Text("Welcome")
                .font(.largeTitle.bold())
                .foregroundColor(.orange)
                .frame(maxWidth: .infinity, alignment: .center)

            VStack(alignment: .leading, spacing: 12) {
                // Login Label
                Text("Login")
                    .font(.title2.bold())
                    .foregroundColor(.white)

                // Email Field
                CustomTextField(placeholder: "Email", text: $presenter.email)

                // Password Field
                CustomTextField(placeholder: "Password", text: $presenter.password, isSecure: true)

                // Forgot password
                HStack {
                    Spacer()
                    Button("Forgot password?") {
                        presenter.forgotPasswordTapped()
                    }
                    .foregroundColor(.white)
                    .font(.footnote)
                }
            }

            // Login Button
            Button(action: {
                presenter.loginTapped()
            }) {
                Text("Login")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            // Sign up Button
            Button(action: {
                presenter.signUpTapped()
            }) {
                Text("Sign up")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.orange)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.orange))
            }

            Spacer()
        }
        .padding()
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
