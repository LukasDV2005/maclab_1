//
//  Vives_PlusApp.swift
//  Vives Plus
//
//  Created by Lukas Devos on 04/11/2025.
//

import SwiftUI

@main
struct Vives_PlusApp: App {
    @State var uurroosterDataStore = UurroosterDataStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(uurroosterDataStore)
        }
    }
}
