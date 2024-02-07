//
//  Forecast.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Forecast
struct Forecast: Codable, Identifiable {
    let forecastday: [Forecastday]
    let id = UUID()
    init(){
        self.forecastday = []
    }
    enum CodingKeys: String, CodingKey {
        case forecastday
        case id
        }
}
