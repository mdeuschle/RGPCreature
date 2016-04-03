//
//  Kumara.swift
//  RGPOOP
//
//  Created by Matt Deuschle on 4/2/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

import Foundation

class Kumara: Enemy {

    let IMMUNE_MAX = 15

    override var loot: [String] {

        return ["Tough Hide", "Kumara Venom", "Rare Trident"]
    }

    override var type: String {

        return "Kumara"
    }

    override func attemptAttack(attackPower: Int) -> Bool {

        if attackPower >= IMMUNE_MAX {

            return super.attemptAttack(attackPower)
        }
        else {

            return false
        }
    }
}
