//
//  Hour.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Hour
class Hour: Codable, Identifiable {
    let time: String
    let tempC: Double
    let condition: Condition
    
    enum CodingKeys: String, CodingKey {
        case time
        case tempC = "temp_c"
        case condition
        
    }
}
