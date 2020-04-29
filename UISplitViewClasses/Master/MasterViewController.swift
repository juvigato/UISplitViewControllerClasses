//
//  MasterViewController.swift
//  UISplitViewClasses
//
//  Created by Juliana Vigato Pavan on 29/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import UIKit

protocol CharacterSelectionDelegate: class {
    func characterSelect(_ newCharacter: Characters)
}

class MasterViewController: UITableViewController {
    
    weak var delegate: CharacterSelectionDelegate?
    
    let characters = [
        Characters(name: "Tanjiro", description: "Brave", iconName: "Tanjiro", charac: .Tanjiro),
        Characters(name: "Inosuke", description: "Crazy", iconName: "Inosuke", charac: .Inosuke),
        Characters(name: "Giyu", description: "Water", iconName: "Giyu", charac: .Giyu)
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let charac = characters[indexPath.row]
        cell.textLabel?.text = charac.name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCharacter = characters[indexPath.row]
        delegate?.characterSelect(selectedCharacter)
        
        if let detailViewController = delegate as? DetailViewController {
          splitViewController?.showDetailViewController(detailViewController, sender: nil)
        }
        
    }
}
