//
//  FavoritesView.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import SwiftUI

struct FavorietenView: View {
    @Environment(AppData.self) var appData
    @State var selectedFavorite: Car?
    var body: some View {
        if (appData.favorites.isEmpty) {
            Text("Geen favoriete autos gevonden")
            Image(systemName: "heart.slash")
        } else {
            List(appData.favorites, id: \.self, selection: $selectedFavorite) { car in
                Text(car.brand)
                Image(car.imageURL)
                Button("Verwijder selectie") {
                    if let selectedFavorite = selectedFavorite {
                        appData.favorites.removeAll { $0.id == selectedFavorite.id }
                    }
                }
            }
        }
        
    }
}
