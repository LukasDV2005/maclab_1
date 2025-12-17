//
//  HomeView.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(AppData.self) var appData
    @Environment(DataManager.self) var dataManager
    @Environment(PathStore.self) var pathStore
    
    var body: some View {
        @Bindable var pathStore = pathStore
        @Bindable var appData = appData
        VStack {
            NavigationStack(path: $pathStore.path) {
                List(dataManager.getCars(), id: \.self, selection: $appData.selectedCar) { car in
                    NavigationLink(value: Route.car(car)) {
                        VStack {
                            Text(car.brand)
                            Text(car.price.description)
                            Text(car.model)
                        }
                    }
                }
            }
            .navigationDestination(for: Route.self) {
                route in switch route {
                case let .car(selectedCar):
                    CarDetailView(car: selectedCar)
                }
            }
        }
    }
}
