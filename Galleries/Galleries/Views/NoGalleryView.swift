//
//  NoGalleryView.swift
//  Galleries
//
//  Created by Lukas Devos on 09/12/2025.
//

import SwiftUI

struct NoGalleryView: View {
    @State var selectedArtist: Artist? = nil
    var gallery: Gallery? = nil
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        if (gallery != nil) {
            VStack {
                Text(gallery!.name).font(Font.largeTitle)
                Text(gallery!.location)
                Text(gallery!.description)
            }
            Divider()
            VStack {
                NavigationStack(path: $pathStore.path) {
                    Text("List of artists").font(Font.subheadline)
                    List(gallery!.artists, id: \.self, selection: $selectedArtist) { artist in
                        NavigationLink(value: Route.artist(artist)) {
                            VStack {
                                Text(artist.name)
                                Text(artist.nationality)
                            }
                        }
                    }
                    .navigationDestination(for: Route.self) { route in switch route {
                        case let .artist(artist): ArtistView(artist: artist)
                    }
                    }
                }
            }
        } else {
            Text("No gallery selected")
        }
    }
}
