//
//  SplitView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 04/11/2025.
//

import SwiftUI

struct SplitView: View {
    @State var selectedEvent : EventModel? = nil
    var toolbar: Bool = false
    var body: some View {
        NavigationSplitView {
            LeftView(selectedEvent: selectedEvent)
        } detail: {
            RightView(selectedEvent: selectedEvent, toolbar: toolbar)
        }
    }
}
