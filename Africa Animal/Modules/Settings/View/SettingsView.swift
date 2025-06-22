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
        VStack(alignment: .leading, spacing: 0){
            Text("Setting").font(.title2.bold())
            .foregroundColor(.white)
            .frame(maxWidth: .infinity,alignment: .center)
            .padding(.top,16)
            Divider()
            Spacer()
        }
        .background(Color.black)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsModuleBuilder.build()
    }
}


