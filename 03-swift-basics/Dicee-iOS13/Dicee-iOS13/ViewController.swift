//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

class ViewController: UIViewController {
    
    // # 41
    // var leftDiceNum = 0
    // var rightDiceNum = 5

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
        
        // #41
        // diceImageView1.image = diceArray[leftDiceNum]
        // diceImageView2.image = diceArray[rightDiceNum]
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) { //print("Button got tapped.")
        //diceImageView1.image = dice4
        //diceImageView2.image = dice4
        
        // #41
        // leftDiceNum += 1
        // rightDiceNum -= 1
        // diceImageView1.image = diceArray[leftDiceNum]
        // diceImageView2.image = diceArray[rightDiceNum]
        
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
    }
    

}

