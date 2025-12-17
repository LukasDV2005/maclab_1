//
//  CarDetailsView.swift
//  ExamenVB
//
//  Created by Lukas Devos on 17/12/2025.
//

import SwiftUI

struct CarDetailView: View {
    @Environment(AppData.self) var appData
    @Environment(PathStore.self) var pathStore
    @State var car: Car?
    var body: some View {
        @Bindable var pathStore = pathStore
        @Bindable var appData = appData
        VStack {
            Text("Car Details")
                .font(.largeTitle)
            Text(car!.brand)
            Text(car!.color)
            Text(car!.fuelType)
            Text(car!.model)
            Text(String(car!.price))
            Text(String(car!.year))
            Divider()
            Button("Add to favorites") {
                appData.favorites.append(car!)
            }
        }
    }
}
