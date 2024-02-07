//
//  Day.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Day
struct Day: Codable, Identifiable {
    let maxtempC, mintempC: Double
    let condition: Condition
    let id = UUID()
    
    init() {
        self.maxtempC = 0.0
        self.mintempC = 0.0
        self.condition = Condition()
    }
    
    enum CodingKeys: String, CodingKey {
        case maxtempC = "maxtemp_c"
        case mintempC = "mintemp_c"
        case condition, id
    }
}
