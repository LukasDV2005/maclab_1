//
//  OnymDetailView.swift
//  DetailDetailer
//
//  Created by Lukas Devos on 15/01/2026.
//

import SwiftUI

struct OnymDetailView: View {
    var onym: Onym
    var word: Word
    var body: some View {
        VStack {
            Text(word.text).font(Font.largeTitle)
            Text(onym.text).font(Font.headline)
            Text(onym.etymology)
        }
    }
}
