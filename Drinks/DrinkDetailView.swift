import SwiftUI

struct DrinkDetailView: View {
    let drink: Drink

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Image(drink.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .aspectRatio(1, contentMode: .fit)
                    .background(
                        RoundedRectangle(cornerRadius: 28, style: .continuous)
                            .fill(
                                RadialGradient(
                                    gradient: Gradient(colors: [
                                        Color("Cream"),
                                        Color("BarGold").opacity(0.45)
                                    ]),
                                    center: .center,
                                    startRadius: 10,
                                    endRadius: 220
                                )
                            )
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
                    .overlay(
                        RoundedRectangle(cornerRadius: 28, style: .continuous)
                            .stroke(Color("BarGold").opacity(0.35), lineWidth: 1)
                    )
                    .shadow(color: Color("BarGold").opacity(0.25), radius: 18, x: 0, y: 10)
                    .padding(.top, 12)

                Text(drink.name)
                    .font(.custom("Didot-Bold", size: 34))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [Color("BarGold"), Color("Cream")],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .multilineTextAlignment(.center)

                Divider()
                    .frame(width: 160)
                    .overlay(Color("BarGold").opacity(0.5))

                Text("¡Disfruta tu cóctel!")
                    .font(.custom("SnellRoundhand", size: 28))
                    .foregroundStyle(Color("Cream"))
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 32)
        }
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color("BarDeep"), Color("BarBackground"), Color("BarDeep")]),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .navigationTitle(drink.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color("BarBackground"), for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}
