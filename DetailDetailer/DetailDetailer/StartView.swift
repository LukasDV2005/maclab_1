//
//  StartView.swift
//  DetailDetailer
//
//  Created by Lukas Devos on 15/01/2026.
//

import SwiftUI

struct StartView: View {
    @State var word: Word?
    var body: some View {
        VStack {
            TabView {
                Tab("Pick a word", systemImage: "airplane.up.forward.app.fill") {
                    WordView(word: $word)
                }
                Tab(word?.text ?? "No word selected", systemImage: "pencil") {
                    OnymView(word: word)
                }
            }
        }
    }
}

#Preview {
    StartView()
}
