//
//  PokemonFetch.swift
//  Pokemon
//
//  Created by Lukas Devos on 14/01/2026.
//

import Foundation
import SwiftUI
internal import Combine

@MainActor
class PokemonFetcher: ObservableObject {
    @Published var pokemon: Pokemon?
    @Published var isLoading = false
    @Published var errorMessage: String?

    func fetchRandomPokemon() async {
        isLoading = true
        errorMessage = nil

        let id = Int.random(in: 1...1025)
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon/\(id)")!

        do {
            let (data, response) = try await URLSession.shared.data(from: url)

            guard let httpResponse = response as? HTTPURLResponse,
                  200..<300 ~= httpResponse.statusCode else {
                throw URLError(.badServerResponse)
            }

            pokemon = try JSONDecoder().decode(Pokemon.self, from: data)
        } catch {
            errorMessage = error.localizedDescription
            print(error)
        }

        isLoading = false
    }
}
