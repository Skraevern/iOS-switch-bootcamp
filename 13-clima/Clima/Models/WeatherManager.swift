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
    
    func fetchWeather(city: String) {
        let apiKey = secrets.getApiKey()
        let urlStr = "\(apiCall)?&units=metric&q=\(city)&appid=\(apiKey)"
        performRequest(urlString: urlStr)
    }
    
    func performRequest(urlString: String) {
        // 1. Create URL
        if let url = URL(string: urlString) {
            // 2. Create url session
            let session = URLSession(configuration: .default)
            
            // 3. Give session a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                    return
                }
                if let safeData = data {
                    parseJson(weatherData: safeData)
                    
                    // Print out JSON as a Strig:
                    let dataString = String(data: safeData, encoding: .utf8)
                    // print(dataString!)
                }
            }
            // 4. Start the task
            task.resume()
        }
        
    }
    func parseJson(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.name) // Oslo
            // print(decodedData.main.temp) // 18.81
            // print(decodedData.weather[0].description) // clear sky
        } catch {
            print(error)
        }
    }
    
    
}

/*
 {
   "coord": {
     "lon": 10.7461,
     "lat": 59.9127
   },
   "weather": [
     {
       "id": 800,
       "main": "Clear",
       "description": "clear sky",
       "icon": "01d"
     }
   ],
   "base": "stations",
   "main": {
     "temp": 18.81,
     "feels_like": 18.08,
     "temp_min": 17.84,
     "temp_max": 19.96,
     "pressure": 1014,
     "humidity": 51,
     "sea_level": 1014,
     "grnd_level": 990
   },
   "visibility": 10000,
   "wind": {
     "speed": 1.81,
     "deg": 200,
     "gust": 2.66
   },
   "clouds": {
     "all": 1
   },
   "dt": 1720772120,
   "sys": {
     "type": 2,
     "id": 237284,
     "country": "NO",
     "sunrise": 1720750587,
     "sunset": 1720816109
   },
   "timezone": 7200,
   "id": 3143244,
   "name": "Oslo",
   "cod": 200
 }18.81
 */
