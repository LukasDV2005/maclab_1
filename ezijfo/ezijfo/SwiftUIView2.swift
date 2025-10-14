//
//  SwiftUIView2.swift
//  ezijfo
//
//  Created by Lukas Devos on 01/10/2025.
//

import SwiftUI

struct SwiftUIView2: View {
    var body: some View {
        TabView() {
            Tab() {
                SwiftUIView()
            }
            Tab() {
                SwiftUIView2()
            }
        }
    }
}

#Preview {
    SwiftUIView2()
}
