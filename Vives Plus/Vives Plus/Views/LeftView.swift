//
//  LeftView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 04/11/2025.
//

import SwiftUI

struct LeftView: View {
    @Environment(UurroosterDataStore.self) private var uurroosterDataStore
    @State var selectedEvent: EventModel?
    @State var loading : Bool = true
    var body: some View {
        VStack {
            if loading {
                ProgressView("Loading...")
            } else {
                List(uurroosterDataStore.uurrooster, id: \.self, selection: $selectedEvent) { uurrooster in
                    HStack {
                        Text(uurrooster.startDateTime.description).bold()
                        NavigationLink(uurrooster.title, destination: RightView(selectedEvent: selectedEvent, toolbar: false))
                    }
                }
            }
        }.task {
            await uurroosterDataStore.loadData()
            loading = false
        }.toolbar {
            NavigationLink(destination: RightView(selectedEvent: nil as EventModel?, toolbar: true )) {
                Image(systemName: "plus")
            }
        }
    }
}
