//
//  VideoPlayerView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//
import SwiftUI
import AVKit

struct VideoPlayerView: View {
    let videoName: String
    @Environment(\.dismiss) var dismiss
    @State private var player: AVPlayer?

    var body: some View {
        NavigationView {
            ZStack {
                if let player = player {
                    VideoPlayer(player: player)
                        .edgesIgnoringSafeArea(.all)
                        .onAppear {
                            player.seek(to: .zero)
                            player.play()
                        }
                } else {
                    Text("Video not found")
                        .foregroundColor(.white)
                        .padding()
                }
            }
            .navigationBarTitle(videoName.capitalized, displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                dismiss()
            }) {
                HStack(spacing: 4) {
                    Image(systemName: "chevron.left")
                    Text("Back")
                }
                .foregroundColor(.orange)
            })
        }
        .onAppear {
            if let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") {
                player = AVPlayer(url: url)
            }
        }
    }
}

