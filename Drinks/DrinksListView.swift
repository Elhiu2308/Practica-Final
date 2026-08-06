import SwiftUI

struct DrinksListView: View {
    private let drinks = Drink.all

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 0) {
                    header
                        .padding(.horizontal, 24)
                        .padding(.top, 20)
                        .padding(.bottom, 28)

                    LazyVStack(spacing: 12) {
                        ForEach(drinks) { drink in
                            NavigationLink(value: drink) {
                                DrinkRow(drink: drink)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 40)
                }
            }
            .background(backgroundGradient)
            .navigationDestination(for: Drink.self) { drink in
                DrinkDetailView(drink: drink)
            }
            .toolbar(.hidden, for: .navigationBar)
        }
        .tint(Color("BarGold"))
    }

    private var backgroundGradient: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color("BarDeep"), Color("BarBackground"), Color("BarDeep")]),
            startPoint: .top,
            endPoint: .bottom
        )
        .ignoresSafeArea()
    }

    private var goldGradient: LinearGradient {
        LinearGradient(
            colors: [Color("BarGold"), Color("Cream"), Color("BarGold")],
            startPoint: .leading,
            endPoint: .trailing
        )
    }

    private var header: some View {
        VStack(spacing: 8) {
            Text("Bebidas")
                .font(.custom("SnellRoundhand", size: 72))
                .foregroundStyle(goldGradient)

            Text("MENÚ")
                .font(.custom("Avenir Next", size: 12).weight(.semibold))
                .tracking(4)
                .foregroundStyle(Color("Cream").opacity(0.65))

            Capsule()
                .fill(Color("BarGold"))
                .frame(width: 64, height: 3)
                .padding(.top, 6)
        }
        .frame(maxWidth: .infinity)
    }
}

private struct DrinkRow: View {
    let drink: Drink

    var body: some View {
        HStack(spacing: 16) {
            Image(drink.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 56, height: 56)
                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))

            Text(drink.name)
                .font(.custom("Didot-Bold", size: 20))
                .foregroundStyle(Color("Cream"))
                .lineLimit(1)
                .minimumScaleFactor(0.75)

            Spacer()

            Image(systemName: "chevron.right")
                .font(.system(size: 12, weight: .bold))
                .foregroundStyle(Color("BarGold").opacity(0.6))
        }
        .padding(14)
        .overlay(
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .stroke(Color("BarGold").opacity(0.4), lineWidth: 1)
        )
    }
}
