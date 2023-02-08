//
//  PokemonListViewController.swift
//  MyPokemon
//
//  Created by Max Franz Immelmann on 2/8/23.
//

import UIKit

class PokemonListViewController: UITableViewController {
    
    // 5. create empty pokemons
    var pokemons: [Pokemon] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // 6. call private func fetchPokemons()
        fetchPokemons()
    }
    
    
    private func fetchPokemons() {
        // 7. call NetworkManager.shared.fetchPokemons
        NetworkManager.shared.fetchPokemons(url: urlList.url.rawValue) { pokemons in
            // 8. save completion results to empty pokemons
            self.pokemons = pokemons
        }
    }
}

// MARK: - Table view data source
extension PokemonListViewController {
    
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        // 9. number of rows 
        pokemons.count
    }

    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 10. guard cell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell",
                                                       for: indexPath)
                as? PokemonViewCell else { return UITableViewCell() }

        

        return cell
    }
}
