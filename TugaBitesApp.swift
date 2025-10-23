import SwiftUI

@main
struct TugaBitesApp: App {
    @StateObject private var store = RecipeStore()
    @StateObject private var favs = FavoritesStore()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(store)
                .environmentObject(favs)
        }
    }
}
