//
//  StartView.swift
//  Galleries
//
//  Created by Lukas Devos on 09/12/2025.
//

import SwiftUI

struct StartView: View {
    @State var gallery: Gallery?
    var body: some View {
        VStack {
            TabView {
                Tab("Galleries", systemImage: "airplane.up.forward.app.fill") {
                    GalleryView(gallery: $gallery)
                }
                Tab(gallery?.name ?? "No gallery", systemImage: "airplane.up.forward.app.fill") {
                    NoGalleryView(gallery: gallery)
                }
            }
        }
    }
}
