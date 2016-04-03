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
    @IBOutlet var enemyHPLabel: UILabel!
    @IBOutlet var enemyImage: UIImageView!
    @IBOutlet var chestButton: UIButton!

    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player(name: "Bob", startingHealthPower: 110, attackPower: 20)
        playerHpLabel.text = ("\(player.healtPower) HP")
        generateRandomEnemy()

    }

    func generateRandomEnemy() {

        let rand = Int(arc4random_uniform(2))

        if rand == 0 {

            enemy = Kumara(startingHealthPower: 50, attackPower: 12)
        }
        else {

            enemy = DevilWizard(startingHealthPower: 60, attackPower: 15)
        }

        enemyImage.hidden = false
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {

        chestButton.hidden = true
        printLabel.text = chestMessage
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
    }

    @IBAction func attackTapped(sender: AnyObject) {

        if enemy.attemptAttack(player.attackPower) {

            printLabel.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHPLabel.text = "\(enemy.healtPower) HP"
        }

        else {

            printLabel.text = "Attack was unsuccessful"
        }

        if let loot = enemy.dropLoot() {

            chestMessage = ("\(player.name) found \(loot)")
            player.addItemToInventory(loot)
            chestButton.hidden = false
        }

        if !enemy.isAlive {

            enemyHPLabel.text = ""
            printLabel.text = ("Killed \(enemy.type)")
            enemyImage.hidden = true

        }
    }

}

