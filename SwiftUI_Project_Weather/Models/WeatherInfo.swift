//
//  WeatherInfo.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - WeatherInfo
struct WeatherInfo: Codable, Identifiable {
    let id = UUID()
    let location: Location
    let current: Current
    let forecast: Forecast
    
    init() {
        self.location = Location()
        self.current = Current()
        self.forecast = Forecast()
    }
    
    enum CodingKeys: String, CodingKey {
        case location , current, forecast, id
    }
}
