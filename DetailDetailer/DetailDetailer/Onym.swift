//
//  Synonyms.swift
//  DetailDetailer
//
//  Created by Lukas Devos on 15/01/2026.
//

import Foundation

struct Onym: Identifiable, Codable, Equatable, Hashable {
    var id: String { onymId }
    let onymId: String
    let text: String
    let etymology: String
    
    enum CodingKeys: String, CodingKey {
        case onymId = "onym_id"
        case text, etymology
    }
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.id == rhs.id
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
