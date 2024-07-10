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
    var tipPrcnt = ""
    var splitPerPerson = ""
    
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
        
        splitPerPerson = tipCalc.calculateSplit(total: bill, tipPrct: tip, numSplit: splitNumPeople)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.splitNumPeople = String(splitNumPeople)
            destinationVC.tipPrct = tipPrcnt
            destinationVC.splitPerPerson = splitPerPerson
        }
    }
    func updateValues() {
        bill = Float(billTextField.text!) ?? 0.0
        splitNumPeople = Int(stepper.value)
        if zeroPctBtn.isSelected == true {
            tipPrcnt = zeroPctBtn.currentTitle!
        } else if tenPctBtn.isSelected == true {
            tipPrcnt = tenPctBtn.currentTitle!
        } else {
            tipPrcnt = twentyPctBtn.currentTitle!
        }
        tip = tipCalc.getTipDecimal(prctStr: tipPrcnt)
    }
}
