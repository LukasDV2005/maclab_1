//
//  ResultsView.swift
//  WK Qatar
//
//  Created by Lukas Devos on 15/10/2025.
//

import SwiftUI

struct ResultsView: View {
    @State var selectedLocation: String?
    var body: some View {
        NavigationSplitView {
            ListStadionView(selectedLocation: selectedLocation)
        } content: {
            ScoreListView()
        } detail: {
            
        }
        
    }
}
