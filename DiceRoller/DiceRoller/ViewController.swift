//
//  ViewController.swift
//  DiceRoller
//
//  Created by Pavan Sabnis on 9/8/18.
//  Copyright © 2018 Pavan Sabnis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // dice image random on startup
        updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        // when roll button pressed
        updateDiceImages()
    }
    
    func updateDiceImages() {
        // Generate ranodmzation index for dice
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        // Update dice images
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        // When device is shook by user
        updateDiceImages()
    }
    

}

