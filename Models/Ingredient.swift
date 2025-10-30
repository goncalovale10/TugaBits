
import Foundation

struct Ingredient: Codable, Hashable, Identifiable {
    var id: UUID = UUID()
    let name: String
    let quantity: String
}
