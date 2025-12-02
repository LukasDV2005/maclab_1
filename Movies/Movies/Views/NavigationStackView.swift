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
        Text("Overview navigationStack")
        Button("clear") {
            pathStore.path.removeAll()
        }
    }
}

#Preview {
    NavigationStackView()
}
