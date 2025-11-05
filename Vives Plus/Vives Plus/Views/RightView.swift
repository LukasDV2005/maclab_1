//
//  RightView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 04/11/2025.
//

import SwiftUI

struct RightView: View {
    @Environment(UurroosterDataStore.self) var uurroosterDataStore
    var selectedEvent: EventModel?
    var body: some View {
        if selectedEvent != nil {
            HStack {
                NavigationSplitView {
                    Text("EDIT EVENT").position(x: 100, y: 100)
                    Text(selectedEvent!.title)
                } detail: {
                    Text("Location?")
                    TextEditor(text: .constant(""))
                    Toggle("All day?", isOn: .constant(false))
                    DatePicker("Start date & time?", selection: .constant(Date()))
                    DatePicker("End date & time?", selection: .constant(Date()))
                }
            }
        } else {
            Text("Selecteer event")
        }
    }
}
