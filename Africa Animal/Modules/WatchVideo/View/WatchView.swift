//
//  WatchView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/22/25.
//

import SwiftUI

struct WatchView: View {
    @ObservedObject var presenter: WatchPresenter

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // MARK: - Title
            Text("Videos")
                .font(.title2.bold())
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 16)

            // MARK: - List
            List(presenter.videos) { video in
                HStack(spacing: 16) {
                    ZStack {
                        Image(video.thumbnailImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90, height: 70)
                            .clipShape(RoundedRectangle(cornerRadius: 10))

                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 24, height: 24)
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        Text(video.name)
                            .font(.headline)
                            .foregroundColor(.orange)

                        Text(video.headline)
                            .font(.subheadline)
                            .foregroundColor(.white)
                            .lineLimit(2)
                    }

                    Spacer()

                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 8)
                .listRowBackground(Color.black)
            }
            .listStyle(.plain)
            .background(Color.black)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct WatchView_Previews: PreviewProvider {
    static var previews: some View {
        WatchModuleBuilder.build()
    }
}
