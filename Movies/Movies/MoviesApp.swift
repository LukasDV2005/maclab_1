//
//  MoviesApp.swift
//  Movies
//
//  Created by Lukas Devos on 19/11/2025.
//

import SwiftUI

@main
struct MoviesApp: App {
    @State var movieDataStore = MovieDataStore()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(movieDataStore).environment( pathStore)
        }
    }
}
