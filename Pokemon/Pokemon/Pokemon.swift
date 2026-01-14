//
//  Pokemon.swift
//  Pokemon
//
//  Created by Lukas Devos on 14/01/2026.
//

import Foundation

struct Pokemon: Codable {
    let name: String
    let sprites: Sprites
}

struct Sprites: Codable {
    let front_default: String
}
