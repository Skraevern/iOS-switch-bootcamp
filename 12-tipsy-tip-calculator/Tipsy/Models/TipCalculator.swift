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
}
