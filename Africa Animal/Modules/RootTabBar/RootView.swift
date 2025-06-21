//
//  RootView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/21/25.
//

import SwiftUI

struct RootView: View {
    @State private var isLoggedIn = false

    var body: some View {
        if isLoggedIn {
            MainTabView()
        } else {
            LoginModuleBuilder.build(isLoggedIn: $isLoggedIn)
        }
    }
}
