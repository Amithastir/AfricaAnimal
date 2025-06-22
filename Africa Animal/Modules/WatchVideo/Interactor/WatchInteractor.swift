//
//  Untitled.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//

import Foundation

protocol WatchInteractorProtocol {
    func fetchVideos() -> [Video]
}

class WatchInteractor: WatchInteractorProtocol {
    func fetchVideos() -> [Video] {
        guard let url = Bundle.main.url(forResource: "videos", withExtension: "json"),
              let data = try? Data(contentsOf: url),
              let videos = try? JSONDecoder().decode([Video].self, from: data) else {
            return []
        }
        return videos
    }
}
