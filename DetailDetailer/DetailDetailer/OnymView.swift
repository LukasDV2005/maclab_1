//
//  OnymView.swift
//  DetailDetailer
//
//  Created by Lukas Devos on 15/01/2026.
//

import SwiftUI

struct OnymView: View {
    var word: Word? = nil
    @State var selectedSynonym: Onym?
    @State var selectedAntonym: Onym?
    @Environment(PathStore.self) var pathStore
    var body: some View {
        @Bindable var pathStore = pathStore
        VStack {
            if (word != nil) {
                NavigationStack(path: $pathStore.path) {
                    VStack {
                        Text(word!.text).font(Font.largeTitle)
                        Text(word!.definition)
                        Text(word!.pronunciation)
                        Text(word!.etymology)
                    }
                    Divider()
                    Text("List of synonyms").font(Font.subheadline)
                    List(word!.synonyms, id: \.self, selection: $selectedSynonym) {
                        onym in
                        NavigationLink(value: Route.onym(id: onym)) {
                            VStack {
                                Text(onym.text)
                            }
                        }
                    }
                    Divider()
                    Text("List of antonyms").font(Font.subheadline)
                    List(word!.antonyms, id: \.self, selection: $selectedAntonym) {
                        onym in
                        NavigationLink(value: Route.onym(id: onym)) {
                            VStack {
                                Text(onym.text)
                            }
                        }
                    }
                    .navigationDestination(for: Route.self) {
                        route in switch route {
                        case let .onym(onym):
                            OnymDetailView(onym: onym, word: word!)
                        }
                    }
                }
            } else {
                Text("No word selected")
            }
        }
    }
}

#Preview {
    OnymView()
}
