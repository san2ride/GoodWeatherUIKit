//
//  WeatherResponse.swift
//  WeatherApp
//
//  Created by Jason Sanchez on 7/27/24.
//

import Foundation

struct WeatherResponse: Codable {
    let main: Weather
}

struct Weather: Codable {
    let temp: Double
    let humidity: Double
}
