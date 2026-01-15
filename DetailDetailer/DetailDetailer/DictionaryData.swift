//
//  DictionaryData.swift
//  DetailDetailer
//
//  Created by Lukas Devos on 15/01/2026.
//

import Foundation

@Observable
class DictionaryData {
    public var dictionary = Dictionary(dictionary: [Word]())
    
    init(){
        dictionary = load("dictionary.json")
    }
    
    func getWords() -> [Word] {
        return dictionary.dictionary
    }
    
    func loadData() async {
        do {
            print("2 second delay")
            try await Task.sleep(for: .seconds(2))
            print("Data loaded")
        } catch {
            print("Error loading data:", error)
        }
    }
}
