//
//  WeatherManager.swift
//  Clima
//
//  Created by Kristian Skreosen on 10/07/2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let apiKey = "9a5d14153344cab145464232471199f4"
    let apiCall = "https://api.openweathermap.org/data/2.5/weather&appid=9a5d14153344cab145464232471199f4&units=metric"

    func fetchWeather(city: String) -> String{
        let urlStr = "\(apiCall)?q=\(city)"
        return urlStr
    }
    
}
