//
//  Characters.swift
//  UISplitViewClasses
//
//  Created by Juliana Vigato Pavan on 29/04/20.
//  Copyright © 2020 Juliana Vigato Pavan. All rights reserved.
//

import Foundation
import UIKit

enum Charac {
    case Tanjiro, Inosuke, Giyu, Nezuko, Zenitsu, Rengoku
//    case Tanjiro, Inosuke, Nezuko, Zenitsu, Musan, Rengoku, Giyu
    
    var image: UIImage {
        switch self {
        case .Tanjiro:
            return UIImage(named: "Tanjiro")!
        case .Inosuke:
            return UIImage(named: "Inosuke")!
        case .Giyu:
            return UIImage(named: "Giyu")!
        case .Nezuko:
            return UIImage(named: "Nezuko")!
        case .Rengoku:
            return UIImage(named: "Rengoku")!
        case .Zenitsu:
            return UIImage(named: "Zenitsu")!
        }
    }
}

class Characters {
    let name: String
    let description: String
    let iconName: String
    let charac: Charac
    
    init(name: String, description: String, iconName: String, charac: Charac) {
        self.name = name
        self.description = description
        self.iconName = iconName
        self.charac = charac
    }
    
    var icon: UIImage? {
        return UIImage(named: iconName)
    }
}
