//
//  Route.swift
//  Movies
//
//  Created by Lukas Devos on 19/11/2025.
//

import Foundation

enum Route: Hashable {
    case movie(Movie)
    case actor(Actor)
    case director(Director)
}
