
import Foundation

struct Recipe: Codable, Identifiable, Hashable {
    let id: UUID
    let title: String
    let imageName: String
    let category: Category
    let prepTimeMinutes: Int
    let calories: Int
    let ingredients: [Ingredient]
    let steps: [String]
    let isPortugueseClassic: Bool

    init(id: UUID = UUID(),
         title: String,
         imageName: String,
         category: Category,
         prepTimeMinutes: Int,
         calories: Int,
         ingredients: [Ingredient],
         steps: [String],
         isPortugueseClassic: Bool = true) {
        self.id = id
        self.title = title
        self.imageName = imageName
        self.category = category
        self.prepTimeMinutes = prepTimeMinutes
        self.calories = calories
        self.ingredients = ingredients
        self.steps = steps
        self.isPortugueseClassic = isPortugueseClassic
    }
}
