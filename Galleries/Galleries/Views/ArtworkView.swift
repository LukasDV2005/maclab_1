//
//  ArtworkView.swift
//  Galleries
//
//  Created by Lukas Devos on 10/12/2025.
//

import SwiftUI

struct ArtworkView: View {
    var selectedArtist: Artist?
    var artwork: Artwork
    var body: some View {
        VStack {
            Text(artwork.title).font(Font.largeTitle)
            Text(artwork.medium)
            Text(artwork.dimensions)
            Text(artwork.description)
            Divider()
            Text("artist: \(selectedArtist!.name) ")
            Divider()
            Text("List of art")
            List(selectedArtist!.artworks, id: \.self) { artwork in
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
