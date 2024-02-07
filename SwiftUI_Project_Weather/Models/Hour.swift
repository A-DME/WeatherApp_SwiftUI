//
//  Hour.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Hour
struct Hour: Codable, Identifiable {
    let time: String
    let tempC: Double
    let condition: Condition
    let id = UUID()
    
    init() {
        self.time = ""
        self.tempC = 0.0
        self.condition = Condition()
    }
    
    enum CodingKeys: String, CodingKey {
        case time
        case tempC = "temp_c"
        case condition
        case id
        
    }
}
