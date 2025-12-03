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
            Text("\(selectedMovie!.title)").bold().font(Font.largeTitle)
            Text("\(selectedMovie!.description)")
            Divider()
            VStack {
                Text("Actors").bold()
                List(selectedMovie!.actors, id: \.self) { actor in
                    NavigationLink(value: Route.actor(actor)) {
                        VStack {
                            Text("\(actor.firstName)" + " " + "\(actor.lastName)")
                        }
                    }
                }.padding(10)
                
            }
            Divider()
            VStack {
                Text("Director").bold()
                NavigationLink(value: Route.director(selectedMovie!.director)) {
                    VStack {
                        Text("\(selectedMovie!.director.firstName)" + " " + "\(selectedMovie!.director.lastName)")
                    }
                }.padding(10)
                Divider()
            }
        }
        .padding()
    }
}
