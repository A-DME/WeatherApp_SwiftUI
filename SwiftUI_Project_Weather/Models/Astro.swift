//
//  Astro.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Astro
struct Astro: Codable, Identifiable {
    let sunrise, sunset: String
    let id = UUID()

    init() {
        self.sunrise = ""
        self.sunset = ""
    }
    enum CodingKeys: String, CodingKey {
        case sunrise, sunset, id
    }
}
