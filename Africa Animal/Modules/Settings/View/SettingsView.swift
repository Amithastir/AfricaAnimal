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
        VStack(alignment: .leading, spacing: 0) {
            // MARK: - Title
            Text("Settings")
                .font(.title2.bold())
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 16)

            .background(Color.black)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
