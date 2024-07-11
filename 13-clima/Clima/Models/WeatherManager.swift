//
//  WeatherManager.swift
//  Clima
//
//  Created by Kristian Skreosen on 10/07/2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let secrets = Secrets()
    let apiCall = "https://api.openweathermap.org/data/2.5/weather"

    func fetchWeather(city: String) -> String{
        let apiKey = secrets.getApiKey()
        let urlStr = "\(apiCall)?&units=metric&q=\(city)&appid=\(apiKey)"
        return urlStr
    }
    
}
