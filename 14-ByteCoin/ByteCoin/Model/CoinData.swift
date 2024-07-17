//
//  CurrencyData.swift
//  ByteCoin
//
//  Created by Kristian Skreosen on 17/07/2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct CoinData: Codable {
    let asset_id_base: String // Crypto type ex BTC
    let asset_id_quote: String // Currency type ex USD
    let rate: Float
}
