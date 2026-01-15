//
//  InstellingenView.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import SwiftUI

struct InstellingenView: View {
    @Environment(AppData.self) var appData
    @Environment(DataManager.self) var dataManager
        var body: some View {
        @Bindable var appData = appData
        @Bindable var dataManager = dataManager
        Picker("Sorteervoorkeur", selection: $appData.selectedSorteerVoorkeur) {
            ForEach(appData.sorteerVoorkeur, id: \.self) { voorkeur in
                Text(voorkeur)
            }.onChange(of: appData.selectedSorteerVoorkeur) {
                let sorted = dataManager.sortCars(sorteervoorkeur: appData.selectedSorteerVoorkeur)
                $dataManager.cars.cars.wrappedValue = sorted
            }
        }.pickerStyle(.radioGroup)
    }
}
