import Foundation

struct Drink: Identifiable, Hashable {
    let id: Int
    let name: String
    let imageName: String

    static let all: [Drink] = [
        Drink(id: 0, name: "After Dinner Mint", imageName: "0"),
        Drink(id: 1, name: "Baked Apple", imageName: "1"),
        Drink(id: 2, name: "Cafe Joy", imageName: "2"),
        Drink(id: 3, name: "Day at the Beach", imageName: "3"),
        Drink(id: 4, name: "Firecracker", imageName: "4"),
        Drink(id: 5, name: "Gingerbread Man", imageName: "5"),
        Drink(id: 6, name: "Key West Lemonade", imageName: "6"),
        Drink(id: 7, name: "Lemon Drop", imageName: "7"),
        Drink(id: 8, name: "Manhattan", imageName: "8"),
        Drink(id: 9, name: "Neapolitan", imageName: "9"),
        Drink(id: 10, name: "Polo Cocktail", imageName: "10"),
        Drink(id: 11, name: "Red Rudolph", imageName: "11"),
        Drink(id: 12, name: "Sandbar Sleeper", imageName: "12"),
        Drink(id: 13, name: "Terminator", imageName: "13"),
        Drink(id: 14, name: "Vodka Mixer", imageName: "14")
    ]
}
