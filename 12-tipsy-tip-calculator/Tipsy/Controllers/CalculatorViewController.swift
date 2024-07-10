//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    let tipCalc = TipCalculator()
    var splitNumPeople = ""
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctBtn: UIButton!
    @IBOutlet weak var tenPctBtn: UIButton!
    @IBOutlet weak var twentyPctBtn: UIButton!
    @IBOutlet weak var splitNumLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctBtn.isSelected = false
        tenPctBtn.isSelected = false
        twentyPctBtn.isSelected = false
        sender.isSelected = true
        
        let tip = tipCalc.getTipDecimal(prctStr: sender.currentTitle!)
        print(tip)

    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumPeople = String(Int(sender.value))
        splitNumLabel.text = splitNumPeople

    }
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        print(splitNumPeople)
    }
    
}
