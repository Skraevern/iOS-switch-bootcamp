//
//  WeatherManager.swift
//  Clima
//
//  Created by Kristian Skreosen on 10/07/2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation
import CoreLocation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ WeatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager {
    var delegate: WeatherManagerDelegate?
    
    let secrets = Secrets()
    let apiCall = "https://api.openweathermap.org/data/2.5/weather"
    
    func fetchWeatherCity(city: String) {
        let urlStr = "\(apiCall)?&units=metric&q=\(city)&appid=\(secrets.getApiKey())"
        performRequest(with: urlStr)
    }
    func fetchWeatherGPS(lat: CLLocationDegrees, lon: CLLocationDegrees) {
        let urlStr = "\(apiCall)?&units=metric&lat=\(lat)&lon=\(lon)&appid=\(secrets.getApiKey())"
        performRequest(with: urlStr)
    }
    
    func performRequest(with urlString: String) {
        // 1. Create URL
        if let url = URL(string: urlString) {
            // 2. Create url session
            let session = URLSession(configuration: .default)
            // 3. Give session a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                if let safeData = data {
                    if let weather = self.parseJson(safeData) {
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }
                    
                    // Print out JSON as a Strig:
                    // let dataString = String(data: safeData, encoding: .utf8)
                    // print(dataString!)
                }
            }
            // 4. Start the task
            task.resume()
        }
    }
    
    func parseJson(_ weatherData: Data) -> WeatherModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            
            let weather = WeatherModel(conditionId: id, cityName: name, temperature: temp)
            return weather
        } catch {
            self.delegate?.didFailWithError(error: error)
            return nil
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
