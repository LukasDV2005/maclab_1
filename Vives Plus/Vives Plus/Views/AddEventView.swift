//
//  AddEventView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 18/11/2025.
//

import SwiftUI

struct AddEventView: View {
    
    @State var event: EventModel = EventModel();
    @Environment(UurroosterDataStore.self) private var uurroosterDataStore
    var body: some View {
        VStack {
            Text("ADD EVENT")
            HStack() {
                Text("Title?")
                TextEditor(text: $event.title)
            }
            HStack {
                Text("Location?")
                TextEditor(text: $event.location)
            }
            Toggle("All day?", isOn: .constant(false))
            DatePicker("Start date & time?\n", selection: $event.startDateTime)
            DatePicker("End date & time?\n", selection: $event.endDateTime)
                Picker(selection: $event.type, label: Text("Type")) {
                    Text("Academic").tag(0)
                    Text("Course").tag(1)
                }.pickerStyle(SegmentedPickerStyle()).padding(.all, 4)
            HStack {
                
                Button("Save") {
                    UurroosterDataStore().addEvent(event: event)
                }
                Button("Cancel") {
                    
                }
            }
        }
    }
}
