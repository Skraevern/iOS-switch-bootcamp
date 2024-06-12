//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

let dice1 = #imageLiteral(resourceName: "DiceOne"), dice2 = #imageLiteral(resourceName: "DiceTwo"), dice3 = #imageLiteral(resourceName: "DiceThree"), dice4 = #imageLiteral(resourceName: "DiceFour"), dice5 = #imageLiteral(resourceName: "DiceFive"), dice6 = #imageLiteral(resourceName: "DiceSix")

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI elemnt
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //  WHO        WHAT    VALUE
        diceImageView1.image = dice3
        diceImageView1.alpha = 0.5
        diceImageView2.image = dice2
        
    }


}

