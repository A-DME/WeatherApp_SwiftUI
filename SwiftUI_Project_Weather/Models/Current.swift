//
//  Current.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Current
class Current: Codable, Identifiable {
    let lastUpdated: String
    let tempC: Double
    let condition: Condition
    let pressureMB: Double
    let humidity: Int
    let feelslikeC: Double
    let visKM: Double
    
    init() {
        self.lastUpdated = ""
        self.tempC = 0.0
        self.condition = Condition()
        self.pressureMB = 0.0
        self.humidity = 0
        self.feelslikeC = 0.0
        self.visKM = 0.0
    }
    
    enum CodingKeys: String, CodingKey {
        case lastUpdated = "last_updated"
        case tempC = "temp_c"
        case condition
        case pressureMB = "pressure_mb"
        case humidity
        case feelslikeC = "feelslike_c"
        case visKM = "vis_km"
        }
}
