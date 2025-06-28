//
//  AnimalDetailView.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/28/25.
//
import SwiftUI
import SwiftUI

struct AnimalDetailView: View {
    @ObservedObject var presenter: AnimalDetailPresenter
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationView {
            content
                .onAppear {
                    setWhiteNavBarTitle()
                }
        }
    }

    private var content: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Top Image
                Image(presenter.animal.image)
                    .resizable()
                    .scaledToFit()

                // Name & Headline
                VStack(spacing: 8) {
                    Text(presenter.animal.name.uppercased())
                        .font(.title2.bold())
                        .foregroundColor(.white)

                    Text(presenter.animal.headline)
                        .font(.body)
                        .foregroundColor(.accent)
                        .multilineTextAlignment(.leading)
                }
                .padding(.horizontal)

                // Gallery Section
                VStack(alignment: .center, spacing: 8) {
                    Label("Wilderness in Pictures", systemImage: "photo.on.rectangle.angled")
                        .font(.headline)
                        .foregroundColor(.white)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack {
                            ForEach(presenter.animal.gallery, id: \.self) { img in
                                Image(img)
                                    .resizable()
                                    .frame(width: 160, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                        }
                    }
                }
                .padding(.horizontal)

                // Description
                VStack(alignment: .center, spacing: 8) {
                    Label("All about \(presenter.animal.name)", systemImage: "info.circle")
                        .font(.headline)
                        .foregroundColor(.white)

                    Text(presenter.animal.description)
                        .foregroundColor(.white)
                        .font(.body)
                }
                .padding(.horizontal)
            }
            .padding(.top)
        }
        .background(Color.black.ignoresSafeArea())
        .navigationBarTitle(presenter.animal.name, displayMode: .inline)
        .navigationBarItems(leading: Button(action: {
            dismiss()
        }) {
            Image(systemName: "xmark")
                .foregroundColor(.accentColor)
        },trailing: Button(action: {
            // logic for add to favorite and unfavorite.
        }) {
            Image(systemName: "heart")
                .foregroundColor(.accentColor)
        })
    }

    private func setWhiteNavBarTitle() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.black
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let mockAnimal = Animal(
            id: "lion",
            name: "Lion",
            headline: "The king of the savannah",
            description: "Lions are social felines found in Africa that live and hunt in prides. Known for their majestic mane and roar, lions are symbols of strength and courage.",
            link: "",
            image: "lion",
            gallery: ["lion", "lion2", "lion3"],
            fact: []
        )
        let presenter = AnimalDetailPresenter(animal: mockAnimal)
        return NavigationView {
            AnimalDetailView(presenter: presenter)
        }
        .preferredColorScheme(.dark)
    }
}
