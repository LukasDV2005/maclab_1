//
//  ListStadionView.swift
//  WK Qatar
//
//  Created by Lukas Devos on 21/10/2025.
//

import SwiftUI

struct ListStadionView: View {
    @Environment var wkresults: WKResultsDataStore
    @Binding var selectedLocation: String?
    var body: some View {
        List(wkresults.getAllTeams(),id: \.self, selection: $selectedLocation) { location in
            Text(location)}
    }
}
