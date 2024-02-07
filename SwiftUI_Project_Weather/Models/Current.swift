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
