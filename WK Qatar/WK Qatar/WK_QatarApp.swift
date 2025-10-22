//
//  WK_QatarApp.swift
//  WK Qatar
//
//  Created by Lukas Devos on 15/10/2025.
//

import SwiftUI

@main
struct WK_QatarApp: App {
    @State var wkDataStore = WKResultsDataStore()
    var body: some Scene {
        WindowGroup {
            ContentView().environment(wkDataStore)
        }
    }
}
