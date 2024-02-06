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
    

    enum CodingKeys: String, CodingKey {
        case name, country, lat, lon
        
    }
}
