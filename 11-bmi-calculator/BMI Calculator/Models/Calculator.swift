//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Kristian Skreosen on 06/07/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct Calculator {
    func getHeightString(heightFloat: Float) -> String {
        // Changes Float to two deciamals.
        let twoDecimals = String(format: "%.2f", heightFloat)
        return "\(String(twoDecimals))m"
    }
    func getWeightString(weightFloat: Float) -> String {
        return "\(String(Int(weightFloat)))kg"
    }
    func calculateBMI(h: Float, w: Float) -> String {
        let bmi = w / (h * h)
        return String(format: "%.1f", bmi)
    }
}
