//
//  WordView.swift
//  DetailDetailer
//
//  Created by Lukas Devos on 15/01/2026.
//

import SwiftUI

struct WordView: View {
    @Binding var word: Word?
    @Environment(DictionaryData.self) var dictionaryData
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        List(dictionaryData.getWords(), id: \.self, selection: $word) { word in
            Text(word.text).font(Font.largeTitle.bold())
            Text(word.definition).font(.body)
            Text(word.pronunciation).font(.body)
            Text(word.etymology).font(.caption)
        }.onChange(of: word) { _ in
            pathStore.path = [Route]()
        }
    }
}
