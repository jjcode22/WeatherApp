//
//  WeatherModel.swift
//  Clima
//
//  Created by JJ on 05/02/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation


//WeatherModel that creates a weather object with properties mapped to the JSON object
struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f",temperature)
    }
    
    var conditionName:String {
        switch conditionID {
        case 200 ... 232:
            return "cloud.bolt"
            
        case 300 ... 321:
            return "cloud.drizzle"

        case 500 ... 531:
            return "cloud.rain"

        case 600 ... 622:
            return "cloud.snow"
            
        case 700 ... 781:
            return "cloud.fog"
            
        case 800:
            return "sun.max"
            
        case 801 ... 804:
            return "cloud"

        default:
            return "cloud"
        }
    }
    
   
}
