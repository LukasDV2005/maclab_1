//
//  DepartureView.swift
//  lab2mac
//
//  Created by Lukas Devos on 30/09/2025.
//

import SwiftUI

struct FlightView: View {
    let flightInfo : FlightInfo
    var body: some View {
        VStack {
            Grid {
                GridRow {
                    Text("\(flightInfo.from2)\n\(flightInfo.from)").foregroundStyle(.tint)
                }
                GridRow {
                    Text("Flight")
                    Image(systemName: "airplane")
                    Text("Destination")
                }.foregroundStyle(.tint)
                GridRow {
                    Text("flight\n\(flightInfo.name)")
                    Text("gate")
                    Text("seat")
                }
            }
            Grid {
                
            }
        }
    }
}

#Preview {
    FlightView(flightInfo: FlightInfo(flight: "SN23A", gate: "B23", seat: "27A", from: "Brussels", to: "Barcelona", time1: "8:15", time2: "11:15", name: "Dirk Hostens", ticket: "Business", date: "27/08/2024", from2: "BRU", to2: "BCN"))
}
