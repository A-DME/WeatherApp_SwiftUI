//
//  Condition.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Condition
class Condition: Codable, Identifiable {
    let text: String
    let icon: String
    let code: Int
}
