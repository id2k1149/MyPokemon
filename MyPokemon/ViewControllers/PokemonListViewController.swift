//
//  PokemonListViewController.swift
//  MyPokemon
//
//  Created by Max Franz Immelmann on 2/8/23.
//

import UIKit

class PokemonListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView,
                            numberOfRowsInSection section: Int) -> Int {
        0
    }

    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell",
                                                 for: indexPath)

        

        return cell
    }
}
