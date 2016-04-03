//
//  Character.swift
//  RGPOOP
//
//  Created by Matt Deuschle on 4/2/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

import Foundation

class Character {

    private var _healthPower = 100
    private var _attackPower = 10

    var healtPower: Int {

        get {
            return _healthPower
        }
    }

    var attackPower: Int {

        get {
            return _attackPower
        }
    }

    var isAlive: Bool {

        get {

            if healtPower <= 0 {

                return false
            }

            else {

                return true
            }
        }
    }

    init(startingHealthPower: Int, attackPower: Int) {

        self._healthPower = startingHealthPower
        self._attackPower = attackPower
    }
    
    func attemptAttack(attackPower: Int) -> Bool {
        
        self._healthPower -= attackPower
        return true
    }
}






