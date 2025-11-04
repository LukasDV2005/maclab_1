//
//  LeftView.swift
//  Vives Plus
//
//  Created by Lukas Devos on 04/11/2025.
//

import SwiftUI

struct LeftView: View {
    @Environment(UurroosterDataStore.self) var uurroosterDataStore
    @State var selectedEvent: String
    var body: some View {
        List(uurroosterDataStore, id: \.self, $selectedEvent) { event in
            Text(event.startDateTime)
        }
    }
}
