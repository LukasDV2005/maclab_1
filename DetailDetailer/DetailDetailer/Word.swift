//
//  Words.swift
//  DetailDetailer
//
//  Created by Lukas Devos on 15/01/2026.
//

import Foundation

struct Word: Identifiable, Codable, Hashable, Equatable {
    var id: String { wordId }
    let wordId: String
    let text: String
    let pronunciation: String
    let definition: String
    let etymology: String
    let synonyms: [Onym]
    let antonyms: [Onym]
    
    enum CodingKeys: String, CodingKey {
        case wordId = "word_id"
        case text, pronunciation, definition, etymology, synonyms, antonyms
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
}
