//
//  ScoreListView.swift
//  WK Qatar
//
//  Created by Lukas Devos on 22/10/2025.
//

import SwiftUI

struct ScoreListView: View {
    @Environment(WKResultsDataStore.self) private var resultsDataStore
    @State var selectedLocation : String?
    var body: some View {
        List(resultsDataStore.getAllResultsByLocation(), id: \.self, selection: $selectedLocation) { result in
            NavigationLink(destination: ScoreDetailView(selectedTeam: result)) {
                
            }
        }
    }
}
