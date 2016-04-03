//
//  ViewController.swift
//  RGPOOP
//
//  Created by Matt Deuschle on 4/2/16.
//  Copyright © 2016 Matt Deuschle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var printLabel: UILabel!
    @IBOutlet var playerHpLabel: UILabel!
    @IBOutlet var enemyHpLabel: NSLayoutConstraint!
    @IBOutlet var enemyImage: UIImageView!
    @IBOutlet var chestButton: UIButton!



    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func onChestTapped(sender: AnyObject) {
    }
}

