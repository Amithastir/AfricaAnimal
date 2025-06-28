//
//  FavoriteView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/28/25.
//

import SwiftUI
import SwiftData

struct FavoriteView: View {
    @ObservedObject var presenter: FavoritePresenter
    @Query private var favorites: [FavoriteAnimal]
    @Environment(\.modelContext) private var modelContext

    var body: some View {
        List {
            ForEach(favorites) { item in
                HStack {
                    Image(item.image)
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 8))

                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                            .foregroundColor(.accent)

                        Text(item.headline)
                            .font(.subheadline)
                            .foregroundColor(.textFieldbg)
                            .lineLimit(2)
                    }

                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.textFieldbg)
                }
            }
            .onDelete { indexSet in
                for index in indexSet {
                    modelContext.delete(favorites[index])
                }
            }
        }
        .navigationTitle("Favourite Animals")
        .background(Color.black.ignoresSafeArea())
    }
}

