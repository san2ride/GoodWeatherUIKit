//
//  Constants.swift
//  WeatherApp
//
//  Created by Jason Sanchez on 7/27/24.
//

import Foundation

struct Constants {
    
    struct Urls {
        static func urlForWeatherByCity(city: String) -> URL {
            // get the cefaule settings for temperatur
            let userDefaults = UserDefaults.standard
            let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            return URL(string:
                "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped ())&appid=ba0d703a8332b5fa2f3a398e9c401321&units=\(unit)")!
        }
    }
}
