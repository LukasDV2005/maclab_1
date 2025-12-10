//
//  ArtistView.swift
//  Galleries
//
//  Created by Lukas Devos on 10/12/2025.
//

import SwiftUI

struct ArtistView: View {
    var artist: Artist
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        VStack {
            Text(artist.name).font(Font.largeTitle)
            Text(artist.nationality)
            Text(artist.style)
            Text(artist.description)
            Text("List of art")
            List(artist.artworks, id: \.self) { artwork in
                NavigationLink(value: Route.artwork(id: artwork)) {
                    VStack {
                        Text(artwork.title)
                        Text(artwork.description)
                    }
                }
            }
        }
    }
}
