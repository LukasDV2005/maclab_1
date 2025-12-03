//
//  NavigationStackView.swift
//  Movies
//
//  Created by Lukas Devos on 02/12/2025.
//

import SwiftUI

struct NavigationStackView: View {
    @Environment(PathStore.self) var pathStore
    var body: some View {
        VStack {
            Text("Overview navigationStack")
            Button("clear") {
                pathStore.path.removeAll()
            }
            let delimiter : String = "\""
            let token = pathStore.path.description.dropFirst(41).components(separatedBy: delimiter)
            Text("Movie " + token[0])
        }
    }
}
