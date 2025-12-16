//
//  ContentView.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Tab("Home", systemImage: "airplane.up.forward.app.fill") {
                    HomeView()
                }
                Tab("Favorieten", systemImage: "airplane.up.forward.app.fill") {
                    FavorietenView()
                }
                Tab("Instellingen", systemImage: "airplane.up.forward.app.fill") {
                    InstellingenView()
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
