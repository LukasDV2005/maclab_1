//
//  HomeView.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(DataManager.self) var dataManager
    @Environment(PathStore.self) var pathStore
    @Environment(AppData.self) var appData
    var body: some View {
        @Bindable var appData = appData
        @Bindable var pathStore = pathStore
        VStack {
            NavigationStack(path: $pathStore.path) {
                VStack {
                    List(dataManager.getCars(), id: \.self) { car in
                        Text(car.model)
                    }
                }
            }
        }
        Picker("filter op " , selection: $appData.selectedBenzineType) {
            ForEach(appData.benzineTypes, id: \.self) { benzine in
                Text(benzine)
            }
        }.pickerStyle(.segmented)
        
    }
}

#Preview {
    HomeView()
}
