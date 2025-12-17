//
//  InstellingenView.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import SwiftUI

struct InstellingenView: View {
    @Environment(AppData.self) var appData
    var body: some View {
        @Bindable var appData = appData
        Picker("Sorteervoorkeur", selection: $appData.selectedSorteerVoorkeur) {
            ForEach(appData.sorteerVoorkeur, id: \.self) { voorkeur in
                Text(voorkeur)
            }
        }.pickerStyle(.radioGroup)
    }
}
