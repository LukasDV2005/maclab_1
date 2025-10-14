//
//  CalcView.swift
//  DemoRPN
//
//  Created by Lukas Devos on 08/10/2025.
//

import SwiftUI

struct CalcView: View {
    @State private var fullText: String = "this is some editable text..."
    var body: some View {
        TextEditor(text: .constant(fullText)).frame(maxWidth: 200, maxHeight: 200)
    }
}

#Preview {
    CalcView()
}
