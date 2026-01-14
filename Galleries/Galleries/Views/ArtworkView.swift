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
    var gallery: Gallery
    var body: some View {
        VStack {
            Text(artwork.title).font(Font.largeTitle)
            Text(artwork.medium)
            Text(artwork.dimensions)
            Text(artwork.description)
            Divider()
            if selectedArtist == nil {
                let oldArtist = gallery.artists.first(where: { $0.artworks.contains(artwork) })
                Text("artist: \(oldArtist!.name) ")
            } else {
                Text("artist: \(selectedArtist!.name) ")
            }
            Divider()
            Text("List of art")
            if selectedArtist == nil {
                let oldArtist = gallery.artists.first(where: { $0.artworks.contains(artwork) })
                List(oldArtist!.artworks, id: \.self) { artwork in
                    NavigationLink(value: Route.artwork(id: artwork)) {
                        VStack {
                            Text(artwork.title)
                            Text(artwork.description)
                        }
                    }
                }
            } else {
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
}
