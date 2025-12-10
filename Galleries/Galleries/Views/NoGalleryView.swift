//
//  NoGalleryView.swift
//  Galleries
//
//  Created by Lukas Devos on 09/12/2025.
//

import SwiftUI

struct NoGalleryView: View {
    var gallery: Gallery? = nil
    @State var selectedArtist: Artist?
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        if (gallery != nil) {
            VStack {
                NavigationStack(path: $pathStore.path) {
                    VStack {
                        Text(gallery!.name).font(Font.largeTitle)
                        Text(gallery!.location)
                        Text(gallery!.description)
                    }
                    Divider()
                    Text("List of artists").font(Font.subheadline)
                    List(gallery!.artists, id: \.self, selection: $selectedArtist) { artist in
                        NavigationLink(value: Route.artist(id: artist)) {
                            VStack {
                                Text(artist.name)
                                Text(artist.nationality)
                            }
                        }
                    }
                    .navigationDestination(for: Route.self) { route in switch route {
                    case let .artist(artist): ArtistView(artist: artist)
                    case let .artwork(artwork):
                        ArtworkView(selectedArtist: selectedArtist, artwork: artwork)
                    }
                    }
                }
            }
        } else {
            Text("No gallery selected")
        }
    }
}
