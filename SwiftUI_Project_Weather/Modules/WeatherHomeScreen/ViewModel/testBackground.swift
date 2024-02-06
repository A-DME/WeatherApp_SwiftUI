//
//  testBackground.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

class TestBackground{
    func CheckMorningOrEvening()->Bool{
        
        var result : Bool
        
        let sunriseString = "2024-02-06 06:00"
        let sunsetString = "2024-02-06 17:30"
        
        let date = Date.now
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        
        let sunrise = dateFormatter.date(from: sunriseString)!
        let sunset = dateFormatter.date(from: sunsetString)!
        
        
        switch date.compare(sunrise){
        case .orderedAscending:
                result = false
        case .orderedDescending, .orderedSame:
            result = true
        }
        
        switch date.compare(sunset){
        case .orderedAscending:
            result = result && true
        case .orderedDescending, .orderedSame:
            result = result && false
        }
        return result
    }
}
