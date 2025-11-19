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
            NavigationStack(path: $pathStore.path) {
                VStack {
                    
                }
            }
        }
        .padding()
    }
}
