//
//  WelcomeView.swift
//  WK Qatar
//
//  Created by Lukas Devos on 15/10/2025.
//

import SwiftUI
struct WelcomeView: View {
    @Environment(WKResultsDataStore.self) private var resultsDataStore
    @State var selectedLocation: String?
    var body: some View {
        List(resultsDataStore.getAllTeams(), id: \.self, selection: $selectedLocation) {
            name in NavigationLink(name) {
                ResultsView(selectedLocation: name)
            }
        }
    }
}
