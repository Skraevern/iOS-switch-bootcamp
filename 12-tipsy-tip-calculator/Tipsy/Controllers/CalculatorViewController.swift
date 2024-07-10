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
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctBtn: UIButton!
    @IBOutlet weak var tenPctBtn: UIButton!
    @IBOutlet weak var twentyPctBtn: UIButton!
    @IBOutlet weak var splitNumLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    var splitNumPeople = 0
    var bill = Float(0.0)
    var tip = NSNumber(0.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tipChanged(_ sender: UIButton) {
        updateValues()
        zeroPctBtn.isSelected = false
        tenPctBtn.isSelected = false
        twentyPctBtn.isSelected = false
        sender.isSelected = true
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        updateValues()
        splitNumLabel.text = String(splitNumPeople)
        billTextField.endEditing(true)
    }
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        updateValues()
        billTextField.endEditing(true)
        
        let splitPerPerson = tipCalc.calculateSplit(total: bill, tipPrct: tip, numSplit: splitNumPeople)
        print(splitPerPerson)
    }
    func updateValues() {
        bill = Float(billTextField.text!) ?? 0.0
        splitNumPeople = Int(stepper.value)
        if zeroPctBtn.isSelected == true {
            tip = tipCalc.getTipDecimal(prctStr: zeroPctBtn.currentTitle!)
        } else if tenPctBtn.isSelected == true {
            tip = tipCalc.getTipDecimal(prctStr: tenPctBtn.currentTitle!)
        } else {
            tip = tipCalc.getTipDecimal(prctStr: twentyPctBtn.currentTitle!)
        }
    }
}
