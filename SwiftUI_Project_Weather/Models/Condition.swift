//
//  Condition.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

// MARK: - Condition
struct Condition: Codable, Identifiable {
    let text: String
    let icon: String
    let code: Int
    let id = UUID()
    
    init() {
        self.text = ""
        self.icon = ""
        self.code = 0
    }
    enum CodingKeys: String, CodingKey {
        case text, icon, code, id
        }
}
