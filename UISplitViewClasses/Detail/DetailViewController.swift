//
//  DetailViewController.swift
//  UISplitViewClasses
//
//  Created by Juliana Vigato Pavan on 29/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgCharac: UIImageView!
    @IBOutlet weak var lblNameCharac: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    var character: Characters? {
        didSet {
            refreshUI()
        }
    }
    
    private func refreshUI() {
        loadViewIfNeeded()
        lblNameCharac.text = character?.name
        imgCharac.image =  character?.charac.image
    }
}

extension DetailViewController: CharacterSelectionDelegate {
    func characterSelect(_ newCharacter: Characters) {
        character = newCharacter
    }
}
