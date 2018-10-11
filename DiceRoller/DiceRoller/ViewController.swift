//
//  ViewController.swift
//  DiceRoller
//
//  Created by Pavan Sabnis on 9/8/18.
//  Copyright © 2018 Pavan Sabnis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        diceImageView = UIImageView(image: UIImage(named: "dice2"))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonTapped(_ sender: Any) {
        print("roll button taped")
        var diceFaces = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
        var diceNumber:Int = Int(arc4random_uniform(6))
        print(diceNumber)
        var diceName = diceFaces[diceNumber]
        print(diceName)
        diceImageView = UIImageView(image: UIImage(named: diceName))
    }
    
    

}

