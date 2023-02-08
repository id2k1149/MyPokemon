//
//  Pokemon.swift
//  MyPokemon
//
//  Created by Max Franz Immelmann on 2/8/23.
//

import Foundation


struct PokemonAPI {
    let results: [Pokemon]
}

struct Pokemon {
    let name: String
    let url: String
}

struct PokemonInfo {
    let sprites: Sprites
}

struct Sprites {
    let other: Other
}

struct Other {
    let home: Home
}

struct Home {
    let front_default: String
}
