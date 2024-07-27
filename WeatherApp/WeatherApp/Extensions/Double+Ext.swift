//
//  Double+Ext.swift
//  WeatherApp
//
//  Created by Jason Sanchez on 7/27/24.
//

import Foundation

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f°",self)
    }
}
