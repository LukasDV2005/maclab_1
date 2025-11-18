//
//  EditEventView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 18/11/2025.
//

import SwiftUI

struct EditEventView: View {
    @Environment(UurroosterDataStore.self) var uurroosterDataStore
    @State var selectedEvent: EventModel
    var body: some View {
        VStack {
            Text("EDIT EVENT")
            Text(selectedEvent.title)
            VStack {
                HStack {
                    Text("Location?")
                    TextEditor(text: $selectedEvent.location)
                }
                Toggle("All day?", isOn: .constant(false))
                DatePicker("Start date & time?\n", selection: $selectedEvent.startDateTime)
                DatePicker("End date & time?\n", selection: $selectedEvent.endDateTime)
                HStack {
                    Text("Type ")
                    Button("Academic") {
                        
                    }
                    Button("Course") {
                        
                    }.background(Color.red)
                }
                HStack {
                    Button("Save") {
                        UurroosterDataStore().updateEvent(event: selectedEvent)
                    }
                        Button("Cancel") {
                            
                        }
                }
            }
        }
    }
}
