//
//  Untitled.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//

protocol WatchRouterProtocol {
    func navigateToVideoDetail(_ video: Video)
}

class WatchRouter: WatchRouterProtocol {
    func navigateToVideoDetail(_ video: Video) {
        print("Navigate to video detail: \(video.id)")
    }
}
