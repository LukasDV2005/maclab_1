//
//  ContentView.swift
//  Movies
//
//  Created by Lukas Devos on 19/11/2025.
//

import SwiftUI

struct ContentView: View {
    @State var selectedMovie: Movie? = nil
    @Environment(MovieDataStore.self) var dataStore
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        VStack {
            List(dataStore.movies.movies, id: \.self) { movie in
                NavigationLink(destination: MovieView(movie: movie)) {
                    Text(movie.title)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
