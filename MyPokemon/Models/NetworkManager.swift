//
//  NetworkManager.swift
//  MyPokemon
//
//  Created by Max Franz Immelmann on 2/8/23.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

enum urlList: String {
    case url = "https://pokeapi.co/api/v2/pokemon"
}

class NetworkManager {
    // singleton
    static let shared = NetworkManager()
    private init(){}
    
    
}

