//
//  DetailView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 18/11/2025.
//

import SwiftUI

struct DetailView: View {
    var selectedEvent: EventModel
    var body: some View {
        HStack{
            Text(selectedEvent.title)
            Text(selectedEvent.location)
            VStack {
                Text("Start")
                Text(selectedEvent.startDateTime.description)
            }
            VStack {
                Text("Einde")
                Text(selectedEvent.endDateTime.description)
            }
        }.toolbar {
            NavigationLink(destination: RightView(selectedEvent: selectedEvent, toolbar: true )) {
                Image(systemName: "edit")
            }
        }
    }
}
