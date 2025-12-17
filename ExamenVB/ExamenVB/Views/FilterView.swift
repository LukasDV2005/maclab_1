//
//  FilterView.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import SwiftUI

struct FilterView: View {
    @Environment(AppData.self) var appData
    @Environment(PathStore.self) var pathStore
    @Environment(DataManager.self) var dataManager
    @State var selectedCar: Car?
    var body: some View {
        @Bindable var appData = appData
        Picker("filter op " , selection: $appData.selectedBenzineType) {
            ForEach(appData.benzineTypes, id: \.self) { benzine in
                Text(benzine)
            }
        }.pickerStyle(.segmented)
        Text(appData.selectedBenzineType)
    }
}
