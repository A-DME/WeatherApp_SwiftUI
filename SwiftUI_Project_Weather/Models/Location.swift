//
//  Location.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation


// MARK: - Location
class Location: Codable, Identifiable {
    let name, country: String
    let lat, lon: Double
    
    init() {
        self.name = ""
        self.country = ""
        self.lat = 20.0
        self.lon = 20.0
        // Because lon & lat of 0,0 is the Null Island
    }

    enum CodingKeys: String, CodingKey {
        case name, country, lat, lon
        
    }
}
