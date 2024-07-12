//
//  WeatherData.swift
//  Clima
//
//  Created by Kristian Skreosen on 11/07/2024.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main		
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
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
