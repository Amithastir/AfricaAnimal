//
//  SettingsView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//
import SwiftUI

struct SettingsView:View {
    
    @ObservedObject var presenter: SettingsPresenter

    var body: some View{
        VStack(alignment: .leading, spacing: 16){
            Text("Setting").font(.title2.bold())
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,alignment: .center)
            .padding(.top,16)

            UserProfileCardView()
            settingsSection1
            Divider()
            Spacer()
        }
        .background(Color.black)
    }
    
    private var settingsSection1: some View {
            VStack(spacing: 02) {
                settingsRow("Help", action: { })
                Divider().background(Color.gray)
                settingsRow("About US", action: { })
                Divider().background(Color.gray)
                Button("Logout") {
                        presenter.clearData()
                    }
                    .foregroundColor(.red)
                .padding()
            }
            .background(Color(.textFieldbg))
            .cornerRadius(12)
            .padding(.horizontal)
        }

    private func settingsRow(_ title: String, rightText: String? = nil, rightColor: Color = .white, action: @escaping () -> Void) -> some View {
           Button(action: action) {
               HStack {
                   Text(title)
                   Spacer()
                   if let right = rightText {
                       Text(right)
                           .foregroundColor(rightColor)
                   } else {
                       Image(systemName: "chevron.right")
                           .foregroundColor(.gray)
                   }
               }
               .padding()
           }
           .foregroundColor(.white)
       }
}

struct UserProfileCardView: View {
    var name = "Firstname Lastname"
    var email = "firstnamelastname@gmail.com"

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .stroke(Color.accent, lineWidth: 2)
                    .frame(width: 60, height: 60)
                Image(systemName: "camera")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.accent)
            }

            VStack(alignment: .leading, spacing: 4) {
                Text(name)
                    .font(.headline)
                    .foregroundColor(.accent)
                Text(email)
                    .font(.subheadline)
                    .foregroundColor(.white)
            }

            Spacer()
        }
        .padding()
        .background(Color(.textFieldbg))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsModuleBuilder.build()
    }
}


