//
//  ExamenVBApp.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import SwiftUI

@main
struct ExamenVBApp: App {
    @State var appData = AppData()
    @State var dataManager = DataManager()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appData)
                .environment(dataManager)
                .environment(pathStore)
        }
    }
}
