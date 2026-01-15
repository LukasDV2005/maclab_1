//
//  DetailDetailerApp.swift
//  DetailDetailer
//
//  Created by Lukas Devos on 15/01/2026.
//

import SwiftUI

@main
struct DetailDetailerApp: App {
    @State var dictionaryData = DictionaryData()
    @State var pathStore = PathStore()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(dictionaryData)
                .environment(pathStore)
        }
    }
}
