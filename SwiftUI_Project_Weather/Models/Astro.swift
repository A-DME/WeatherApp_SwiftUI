//
//  Astro.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Astro
class Astro: Codable, Identifiable {
    let sunrise, sunset: String

    enum CodingKeys: String, CodingKey {
        case sunrise, sunset
    }
}
