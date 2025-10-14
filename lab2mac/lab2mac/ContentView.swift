//
//  ContentView.swift
//  lab2mac
//
//  Created by Lukas Devos on 30/09/2025.
//

import SwiftUI

struct ContentView: View {
    let departureFlightInfo = FlightInfo(flight: "SN23A", gate: "B23", seat: "27A", from: "Brussels", to: "Barcelona", time1: "8:15", time2: "11:15", name: "Dirk Hostens", ticket: "Business", date: "27/08/2024", from2: "BRU", to2: "BCN")
    let arrivalFlightInfo = FlightInfo(flight: "SN205", gate: "XD-30", seat: "17C", from: "Barcelona", to: "Brussels", time1: "13:05", time2: "15:15", name: "Dirk Hostens", ticket: "Business", date: "1/09/2024", from2: "BCN", to2:"BRU")
    var body: some View {
        if #available(macOS 15.0, iOS 18.0, *) {
            TabView {
                Tab("departure", systemImage: "airplane.departure") {
                    FlightView(flightInfo: departureFlightInfo)
                }
                Tab("home", systemImage: "house") {
                    HomeView()
                }
                Tab("arrival", systemImage: "airplane.arrival") {
                    FlightView(flightInfo: arrivalFlightInfo)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
