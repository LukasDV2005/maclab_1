//
//  MovieDataStore.swift
//  Movies
//
//  Created by Dirk Hostens on 04/12/2023.
//

import Foundation

@Observable
class MovieDataStore {
    public var movies = Movies()
    
    init(){
        movies = load("movies.json")
       
    }
    
    func getMovies() -> [Movie] {
        return movies.movies
    }
    
    func getMovies(actor: Actor) -> [Movie] {
        let moviesA = movies.movies.filter{ $0.actors.contains(where: { $0.self == actor }) }
        return moviesA
    }
    
    func getMovies(director: Director) -> [Movie] {
        let moviesD = movies.movies.filter(){ $0.director == director }
        return moviesD
    }
    
    func getActors(director: Director) -> [Actor] {
        var actors : [Actor] = []
        actors = movies.movies.filter(){ $0.director == director }.flatMap(\.actors)
        return actors
    }
    
    private func sort() {
        movies.movies = movies.movies.sorted(by: { $0.title < $1.title })
    }
    
    func loadData() async {
        //simulate async call
        do {
            print("⏳ Simulating 2-second load delay...")
            try await Task.sleep(for: .seconds(2)) // Simulate long load
            // load movies
            // sort
            print("✅ Data loaded successfully.")
            
        } catch {
            print("❌ Failed to load uurrooster:", error)
            //movies is lege array
            
        }
    }
}
