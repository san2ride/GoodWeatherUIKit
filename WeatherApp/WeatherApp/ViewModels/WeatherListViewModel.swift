//
//  WeatherListViewModel.swift
//  WeatherApp
//
//  Created by Jason Sanchez on 7/27/24.
//

import Foundation

class WeatherListViewModel {
    
}

class WeatherViewModel {
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        return weather.name
    }
    
    var temperature: Double {
        return weather.main.temp
    }
}
