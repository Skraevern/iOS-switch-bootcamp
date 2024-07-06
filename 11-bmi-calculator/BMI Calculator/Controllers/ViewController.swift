//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculator = Calculator()

    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = calculator.getHeightString(heightFloat: sender.value)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = calculator.getWeightString(weightFloat: sender.value)
    }
    @IBAction func calculateBtn(_ sender: UIButton) {
        print(calculator.calculateBMI(h: heightSlider.value, w: weightSlider.value))
    }
}

