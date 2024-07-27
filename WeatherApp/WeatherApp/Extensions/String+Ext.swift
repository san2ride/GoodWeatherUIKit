//
//  String+Ext.swift
//  WeatherApp
//
//  Created by Jason Sanchez on 7/27/24.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
