
import Foundation

enum Category: String, Codable, CaseIterable, Identifiable {
    case meat = "Meat"
    case fish = "Fish"
    case dessert = "Dessert"
    case soup = "Soup"
    case vegetarian = "Vegetarian"
    case other = "Other"

    var id: String { rawValue }

    var icon: String {
        switch self {
        case .meat: return "fork.knife"
        case .fish: return "fish"
        case .dessert: return "cupcake"
        case .soup: return "tortoise.fill" // placeholder emoji-like; replace with SF Symbol you prefer
        case .vegetarian: return "leaf"
        case .other: return "sparkles"
        }
    }
}
