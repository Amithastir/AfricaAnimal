//
//  MainTabView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeModuleBuilder.build()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("Favorites")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }

            Text("Profile")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(.orange)
    }
}
