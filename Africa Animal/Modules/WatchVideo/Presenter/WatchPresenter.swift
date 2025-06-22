//
//  Untitled.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//
import SwiftUI

class WatchPresenter: ObservableObject {
    private let interactor: WatchInteractorProtocol
    private let router: WatchRouterProtocol

    @Published var videos: [Video] = []

    init(interactor: WatchInteractorProtocol, router: WatchRouterProtocol) {
        self.interactor = interactor
        self.router = router
        loadVideos()
    }

    func loadVideos() {
        videos = interactor.fetchVideos()
    }

    func didSelectVideo(_ video: Video) {
        router.navigateToVideoDetail(video)
    }
}
