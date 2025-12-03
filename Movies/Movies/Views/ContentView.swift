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
            NavigationStack(path: $pathStore.path){
                List(dataStore.movies.movies, id: \.self, selection: $selectedMovie) { movie in
                    NavigationLink(value: Route.movie(movie)) {
                        VStack {
                            Text("\(movie.title)").bold()
                            Text("\(movie.description)")
                        }
                    }
                }
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case let .movie(movie):
                        MovieView(selectedMovie: movie)
                    case let .actor(actor):
                        ActorView(selectedActor: actor)
                    case let .director(director):
                        DirectorView(selectedDirector: director)
                    }
                }
            }
        }
        NavigationStackView()
        .padding()
    }
}
