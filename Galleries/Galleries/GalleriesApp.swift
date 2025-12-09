//
//  GalleriesApp.swift
//  Galleries
//
//  Created by Lukas Devos on 03/12/2025.
//

import SwiftUI

@main
struct GalleriesApp: App {
    @State var galleryData = GalleryData()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(galleryData)
                .environment(pathStore)
        }
    }
}
