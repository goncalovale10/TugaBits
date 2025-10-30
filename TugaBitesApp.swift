
import SwiftUI

@main
struct TugaBitesApp: App {
    @StateObject private var repo = LocalRecipeRepository()
    @StateObject private var favorites = FavoritesStore()

    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(repo)
                .environmentObject(favorites)
        }
    }
}
