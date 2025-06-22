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
                .font(.system(size: 60, weight: .bold))
                .foregroundColor(.accent)
                .frame(maxWidth: .infinity, alignment: .center)

            VStack(alignment: .leading, spacing: 12) {
                // Login Label
                Text("Login")
                    .font(.system(size: 40,weight: .bold))
                    .foregroundColor(Color.mainWhite)

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
                    .font(.system(size: 20,weight: .regular))
                }
            }

            // Login Button
            Button(action: {
                presenter.loginTapped()
            }) {
                Text("Login")
                    .font(.system(size: 20,weight: .bold))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.accent)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }

            // Sign up Button
            Button(action: {
                presenter.signUpTapped()
            }) {
                Text("Sign up")
                    .font(.system(size: 20,weight: .bold))
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.accent)
                    .overlay(RoundedRectangle(cornerRadius: 8).stroke(.accent))
            }

            Spacer()
        }
        .padding()
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginModuleBuilder.build(isLoggedIn: .constant(false))
    }
}
