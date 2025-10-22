//
//  ListStadionView.swift
//  WK Qatar
//
//  Created by Lukas Devos on 21/10/2025.
//

import SwiftUI

struct ListStadionView: View {
    @Environment(WKResultsDataStore.self) private var wkResultsDataStore
    @State var selectedLocation: String?
    var body: some View {
        List(wkResultsDataStore.getAllLocations(), id: \.self, selection: $selectedLocation) {location in
            Text(location)
        }
    }
}
