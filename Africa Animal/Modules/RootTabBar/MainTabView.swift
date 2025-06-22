//
//  MainTabView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0

    init() {
        UITabBar.appearance().barTintColor = UIColor.black
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().isTranslucent = false
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeModuleBuilder.build()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Browse")
                }
                .tag(0)

            WatchModuleBuilder.build()
                .tabItem {
                    Image(systemName: "play.rectangle.fill")
                    Text("Watch")
                }
                .tag(1)

            Text("Fav") // need to replace with favorites module.
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Fav")
                }
                .tag(2)

            Text("Settings") // need to replace with setting module.
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
                .tag(3)
        }
        .accentColor(.accent) // Selected item color
    }
}
