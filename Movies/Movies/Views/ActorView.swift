//
//  ActorView.swift
//  Movies
//
//  Created by Lukas Devos on 19/11/2025.
//

import SwiftUI

struct ActorView: View {
    @State var selectedActor: Actor?
    @State var selectedMovie: Movie?
    @Environment(MovieDataStore.self) var dataStore
    @Environment(PathStore.self) var pathStore
    var body: some View {
        VStack{
            Text("Actor: \(selectedActor!.firstName)" + " " + "\(selectedActor!.lastName)")
            Divider()
            Text("birthday: " + "\(selectedActor!.birthday)")
            Divider()
            Text("Movie(s)").bold()
            List(dataStore.getMovies(actor:  selectedActor!), id: \.self) { movie in
                NavigationLink(value: Route.movie(movie)) {
                    VStack {
                        Text("\(movie.title)")
                    }
                }
            }
            Divider()
        }
    }
}
