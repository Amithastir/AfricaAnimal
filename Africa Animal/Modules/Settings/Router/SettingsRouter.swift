//
//  SettingsRouter.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//


protocol SettingsRouterProtocol {
    func navigateToVShareWithFriends()
}

class SettingsRouter: SettingsRouterProtocol {
    func navigateToVShareWithFriends() {
        print("Navigate to share with friends")
    }
}
