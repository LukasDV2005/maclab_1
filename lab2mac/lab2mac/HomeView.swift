//
//  SwiftUIView.swift
//  lab2mac
//
//  Created by Lukas Devos on 30/09/2025.
//

import SwiftUI
struct HomeView: View {
    var name: String = "Dima"
    var body: some View {
        Image("barcelona-image")
        ScrollView {
            Text("Hello, \(name)!")
            Text("Barcelona").foregroundStyle(.tint)
            Text("Barcelona is a city on the northeastern coast of Spain. It is the capital and largest city of the autonomous community of Catalonia, as well as the second-most populous municipality of Spain. With a population of 1.7 million within city limits,[5] its urban area extends to numerous neighbouring municipalities within the province of Barcelona and is home to around 5.7 million people,[3] making it the fifth most populous urban area of the European Union after Paris, the Ruhr area, Madrid and Milan.[3] It is one of the largest metropolises on the Mediterranean Sea, located on the coast between the mouths of the rivers Llobregat and Besòs, bounded to the west by the Serra de Collserola mountain range.")
        }
    }
}

#Preview {
    HomeView()
}
