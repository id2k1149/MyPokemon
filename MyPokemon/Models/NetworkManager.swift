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
    
    func fetchPokemons(url: String,
                       completion: @escaping([Pokemon]) -> Void) {
        // 1. check is url valid
        // "string" creates a URL instance from the provided string.
        guard let url = URL(string: url) else { return }
        
        // 2. start url session with url
        URLSession.shared.dataTask(with: url) { data, response, error in
            // "data" is Optional so we have to take data from data
            guard let data = data else { return }
            
            // 3. decode data from 0/1 to json with try/do/catch
            do {
                let decoder = JSONDecoder()
                // add Decodable to all structs
                let pokemonAPI = try decoder.decode(PokemonAPI.self, from: data)
                
                // 4. return pokemonAPI (results) to PokemonListViewController
                DispatchQueue.main.async {
                    completion(pokemonAPI.results)
                }
            } catch {
                print(error)
            }
        }.resume()
    }
}

