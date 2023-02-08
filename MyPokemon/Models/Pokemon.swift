//
//  Pokemon.swift
//  MyPokemon
//
//  Created by Max Franz Immelmann on 2/8/23.
//

import Foundation

struct PokemonAPI: Decodable {
    let results: [Pokemon]
}

struct Pokemon: Decodable {
    let name: String
    let url: String
}

struct PokemonInfo: Decodable {
    let sprites: Sprites
}

struct Sprites: Decodable {
    let other: Other
}

struct Other: Decodable {
    let home: Home
}

struct Home: Decodable {
    let front_default: String
}
