//
//  tipCalculator.swift
//  Tipsy
//
//  Created by Kristian Skreosen on 10/07/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct TipCalculator {
    func getTipDecimal(prctStr: String) -> NSNumber {
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent

        return formatter.number(from: prctStr)!
    }
    func calculateSplit(total: Float, tipPrct: NSNumber, numSplit: Int) -> String {
        let tip = total * Float(tipPrct)
        let sum = total + tip
        let split = sum / Float(numSplit)
        return String(format: "%.2f", split)
    }
}
