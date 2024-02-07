//
//  Forecastday.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Forecastday
struct Forecastday: Codable, Identifiable {
    let date: String
    let day: Day
    let astro: Astro
    let hour: [Hour]
    let id = UUID()
    
    init(){
        self.date = ""
        self.day = Day()
        self.astro = Astro()
        self.hour = []
    }

    enum CodingKeys: String, CodingKey {
        case date
        case day, astro, hour
        case id
    }
}
