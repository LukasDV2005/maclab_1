//
//  AppData.swift
//  ExamenVB
//
//  Created by Lukas Devos on 16/12/2025.
//

import Foundation

@Observable
class AppData {
    var selectedBenzineType : String = "Alle"
    var benzineTypes : [String] = ["Alle", "Benzine", "Elektrisch"]
    var sorteerVoorkeur : [String] = ["Prijs", "Merk", "Jaar"]
    var selectedSorteerVoorkeur: String = "Prijs"
    var selectedCar : Car?
    var favorites: [Car] = []
}
