//
//  SwiftUIView.swift
//  DemoRPN
//
//  Created by Lukas Devos on 15/10/2025.
//

import SwiftUI

struct CustomButton: View {
    var name : String
    var function : () -> Void
    var body: some View {
        Button(action : function) {Text(name)}.foregroundColor(Color.white).background(Color.black).cornerRadius(10)
    }
}
