//
//  SplitView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 04/11/2025.
//

import SwiftUI

struct SplitView: View {
    var selectedEvent: String
    var body: some View {
        VStack {
            LeftView(selectedEvent: selectedEvent)
        }
    }
}
