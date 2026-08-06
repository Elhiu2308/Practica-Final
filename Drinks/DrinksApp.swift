import SwiftUI

@main
struct DrinksApp: App {
    var body: some Scene {
        WindowGroup {
            DrinksListView()
                .preferredColorScheme(.dark)
        }
    }
}
