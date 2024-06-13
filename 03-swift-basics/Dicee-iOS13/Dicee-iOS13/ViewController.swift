//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

let dice1 = #imageLiteral(resourceName: "DiceOne"), dice2 = #imageLiteral(resourceName: "DiceTwo"), dice3 = #imageLiteral(resourceName: "DiceThree"), dice4 = #imageLiteral(resourceName: "DiceFour"), dice5 = #imageLiteral(resourceName: "DiceFive"), dice6 = #imageLiteral(resourceName: "DiceSix")

let diceArray = [dice1, dice2, dice3, dice4, dice5, dice6]

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI elemnt
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //  WHO           WHAT    VALUE
        // diceImageView1.image = dice6
        // diceImageView1.alpha = 0.5 50% see through
        // diceImageView2.image = dice2
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) { //print("Button got tapped.")
        //diceImageView1.image = dice4
        //diceImageView2.image = dice4
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
    }
    

}

