//
//  WKResultsDataStore.swift
//  WK Qatar
//
//  Created by Lukas Devos on 21/10/2025.
//

import Foundation
@Observable class WKResultsDataStore {
    var results: [WKResult] = []
    
    init() {
        results = load("WKResultsQatar.json")
    }
    
    func getAllTeams() -> [String] {
        let filteredResults = results.filter { wkresult in
            wkresult.group != nil
        }
        let teams = filteredResults.map{wkresult in
            wkresult.homeTeam
        }
        return Array(Set(teams)).sorted()
    }
    func getAllLocations() -> [String] {
        let filteredResults = results.filter { wkresult in
            wkresult.group != nil
        }
        let locations = filteredResults.map{wkresult in
            wkresult.location
        }
        return Array(Set(locations)).sorted()
    }
    func getAllResultsByLocation() -> [String: [WKResult]] {
        let filteredResults = results.filter { wkresult in
            wkresult.group != nil
        }
        let groupedResults = Dictionary(grouping: filteredResults) { (wkresult: WKResult) -> String in
            wkresult.location
        }
        return groupedResults
    }
}
