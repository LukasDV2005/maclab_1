//
//  GalleryView.swift
//  Galleries
//
//  Created by Lukas Devos on 09/12/2025.
//

import SwiftUI

struct GalleryView: View {
    @Binding var gallery: Gallery?
    @Environment(GalleryData.self) var galleryStore
    var body: some View {
        List(galleryStore.getGalleries(), id: \.self, selection: $gallery) { gallery in
            Text(gallery.name).font(Font.largeTitle)
            Text(gallery.location)
            Text(gallery.description).lineLimit(1).fontWeight(Font.Weight.light)
        }
    }
}
