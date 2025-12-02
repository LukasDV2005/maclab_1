//
//  MovieView.swift
//  Movies
//
//  Created by Lukas Devos on 19/11/2025.
//

import SwiftUI

struct MovieView: View {
    @State var selectedMovie: Movie?
    @Environment(MovieDataStore.self) var dataStore
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        VStack {
            Text("\(selectedMovie!.title)").bold()
            Text("\(selectedMovie!.description)")
            VStack {
                Text("Actors").bold()
                List(selectedMovie!.actors, id: \.self) { actor in
                    NavigationLink(value: Route.actor(actor)) {
                        Text("\(actor.firstName)" + " " + "\(actor.lastName)")
                    }
                }
            }
            Text("Director").bold()
            
        }
        .padding()
    }
}
