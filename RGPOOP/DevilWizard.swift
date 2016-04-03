//
//  DevilWizard.swift
//  RGPOOP
//
//  Created by Matt Deuschle on 4/3/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {

    override var loot: [String] {

        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }

    override var type: String {

        return "Devil Wizard"
    }
}
