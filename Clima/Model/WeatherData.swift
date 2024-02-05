//
//  WeatherData.swift
//  Clima
//
//  Created by JJ on 05/02/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Weather: Decodable{
    let id: Int
    let description: String
}

struct Main: Decodable {
    let temp: Double
}
