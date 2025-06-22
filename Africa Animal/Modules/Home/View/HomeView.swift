import SwiftUI

struct HomeView: View {
    @ObservedObject var presenter: HomePresenter

    var body: some View {
        VStack(spacing: 0) {
            
            Text("Africa")
                .font(.title2.bold())
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 16)
            
            // MARK: - Carousel
            TabView(selection: $presenter.selectedIndex) {
                ForEach(0..<presenter.carouselImages.count, id: \.self) { index in
                    ZStack(alignment: .bottomLeading) {
                        Image(presenter.carouselImages[index])
                            .resizable()
                            .scaledToFill()
                            .frame(height: 300)
                            .clipped()
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .frame(height: 300)

            // MARK: - Animal List
            List(presenter.animals) { animal in
                AnimalRowView(animal: animal)
                    .onTapGesture {
                        presenter.didSelectAnimal(animal)
                    }
            }
            .listStyle(.plain)
            .background(Color.black)
        }
        .background(Color.black)
        .navigationTitle("Africa")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AnimalRowView: View {
    let animal: Animal

    var body: some View {
        HStack(alignment: .top, spacing: 12) {
            Image(animal.image)
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 12))

            VStack(alignment: .leading, spacing: 4) {
                Text(animal.name)
                    .font(.headline)
                    .foregroundColor(.orange)

                Text(animal.headline)
                    .font(.subheadline)
                    .lineLimit(2)
                    .foregroundColor(.white)
            }

            Spacer()

            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .listRowBackground(Color.black)
    }
}

