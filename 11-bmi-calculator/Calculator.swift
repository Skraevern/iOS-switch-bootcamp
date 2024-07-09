//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Kristian Skreosen on 06/07/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct Calculator {
    
    var bmi: BMI?
    
    func getHeightString(heightFloat: Float) -> String {
        // Changes Float to two deciamals.
        let twoDecimals = String(format: "%.2f", heightFloat)
        return "\(String(twoDecimals))m"
    }
    func getWeightString(weightFloat: Float) -> String {
        return "\(String(Int(weightFloat)))kg"
    }
    mutating func calculateBMI(h: Float, w: Float) {
        let bmiValue = w / (h * h)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: UIColor.red)
        }
    
        // return String(format: "%.1f", bmi?.value)
    }
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.orange
    }
    
}
