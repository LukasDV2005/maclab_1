//
//  RightView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 04/11/2025.
//

import SwiftUI

struct RightView: View {
    var selectedEvent: EventModel?
    var toolbar: Bool
    var body: some View {
        if toolbar {
            if(selectedEvent == nil) {
                AddEventView()
            } else {
                EditEventView(selectedEvent: selectedEvent!)
            }
        } else if (selectedEvent == nil){
            Text("Selecteer event")
        } else {
            DetailView(selectedEvent: selectedEvent!)
        }
    }
}
