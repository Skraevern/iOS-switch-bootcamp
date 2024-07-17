//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct CoinManager {
    
    let secrets = Secrets()
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func getCoinPrice(for currency: String) {
        let apiKey = secrets.getApiKey()
        let urlStr = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(with: urlStr)
    }
    
    func performRequest(with urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    //self.delegate?.didFailWithError(error: error)
                    print(error!)
                    return
                }
                if let safeData = data {
                    if let coin = self.parseJson(safeData) {
                        //self.delegate?.didUpdateWeather(self, weather: weather)
                        print(coin.rate)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJson(_ coinData: Data) -> CoinModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: coinData)
            let cryptoType = decodedData.asset_id_base
            let currencyType = decodedData.asset_id_quote
            let rate = decodedData.rate
            
            let coin = CoinModel(cryptoType: cryptoType, currencyType: currencyType, rate: rate)
            return coin
        } catch {
            //self.delegate?.didFailWithError(error: error)
            print(error)
            return nil
        }
    }

}
    


