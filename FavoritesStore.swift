
import Foundation
import Combine

final class FavoritesStore: ObservableObject {
    @Published private(set) var favoriteIDs: Set<UUID> = []
    private let key = "favorite_recipes"

    init() {
        load()
    }

    func isFavorite(_ recipe: Recipe) -> Bool {
        favoriteIDs.contains(recipe.id)
    }

    func toggle(_ recipe: Recipe) {
        if favoriteIDs.contains(recipe.id) {
            favoriteIDs.remove(recipe.id)
        } else {
            favoriteIDs.insert(recipe.id)
        }
        persist()
    }

    private func persist() {
        let ids = favoriteIDs.map { $0.uuidString }
        UserDefaults.standard.set(ids, forKey: key)
    }

    private func load() {
        guard let ids = UserDefaults.standard.array(forKey: key) as? [String] else { return }
        favoriteIDs = Set(ids.compactMap(UUID.init(uuidString:)))
    }
}
