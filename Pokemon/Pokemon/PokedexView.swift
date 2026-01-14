//
//  PokedexView.swift
//  Pokemon
//
//  Created by Lukas Devos on 14/01/2026.
//

import SwiftUI
struct PokedexView: View {
    @StateObject private var fetcher = PokemonFetcher()
    @State var guess : String = ""
    @State var guessed : Bool = false
    @State var oldName: String = ""
    @State var streak: Int = 0
    @State var bestStreak: Int = 0
    var body: some View {
        VStack {
            
            if fetcher.isLoading {
                ProgressView()
            }
            if (fetcher.pokemon != nil) {
                AsyncImage(
                    url: URL(string: fetcher.pokemon!.sprites.front_default)
                ) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ProgressView()
                }
                Spacer()
                if (!guessed) {
                    TextField("Guess a Pokemon", text: $guess)
                    Button("Guess") {
                        guessed = true
                        oldName = fetcher.pokemon!.name.lowercased()
                    }
                }
                else {
                    Text("You guessed: \(guess)")
                    if (guess == fetcher.pokemon!.name.lowercased()) {
                        Text("Nice!")
                    } else {
                        Text("You suck")
                        Text("Correct answer: \(fetcher.pokemon!.name)")
                    }
                    Button("Next Pokemon") {
                        Task {
                            await fetcher.fetchRandomPokemon()
                        }
                        if(guess == oldName && guess != "") {
                            streak += 1
                        } else {
                            bestStreak = streak > bestStreak ? streak : bestStreak
                            streak = 0
                        }
                        guess = ""
                        guessed = false
                    }
                }
                Text("Streak: \(streak)")
                Text("Best Streak: \(bestStreak)")
            }
        }.task {
            await fetcher.fetchRandomPokemon()
        }
    }
}
