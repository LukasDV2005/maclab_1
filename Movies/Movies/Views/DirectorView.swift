//
//  DirectorView.swift
//  Movies
//
//  Created by Lukas Devos on 19/11/2025.
//

import SwiftUI

struct DirectorView: View {
    @State var selectedMovie: Movie?
    @State var selectedDirector: Director?
    @Environment(MovieDataStore.self) var dataStore
    @Environment(PathStore.self) var pathStore
    var body: some View {
        VStack {
            Text("Director: " + "\(selectedDirector!.firstName)" + " " +  "\(selectedDirector!.lastName)")
            Divider()
            Text("Movie(s)").bold()
            List(dataStore.getMovies(director:  selectedDirector!), id: \.self) { movie in
                NavigationLink(value: Route.movie(movie)) {
                    VStack {
                        Text("\(movie.title)")
                    }
                }
            }
            Divider()
            Text("Actors work with:")
            List(dataStore.getActors(director:  selectedDirector!), id: \.self) { actor in
                NavigationLink(value: Route.actor(actor)) {
                    VStack {
                        Text("\(actor.firstName)" + " " +  "\(actor.lastName)")
                    }
                }
            }
        }
    }
}
