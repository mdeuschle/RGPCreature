//
//  Player.swift
//  RGPOOP
//
//  Created by Matt Deuschle on 4/2/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

import Foundation

class Player : Character {

    private var _name = "Player"

    var name : String {

        get {

            return _name
        }
    }

    private var _inventory = [String]()

    var inventory : [String] {

            return _inventory
    }

    func addItemToInventory(item: String) {

        _inventory.append(item)
    }

    convenience init(name: String, startingHealthPower: Int, attackPower: Int) {

        self.init(startingHealthPower: startingHealthPower, attackPower: attackPower)

        _name = name
    }
}
