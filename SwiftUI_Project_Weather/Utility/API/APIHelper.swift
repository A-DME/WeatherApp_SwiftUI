//
//  APIHelper.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

class APIHelper{
    static var baseURL = "https://api.weatherapi.com"
    static var key = "609f907bf32f4932825110545240502"
// Example URL   https://api.weatherapi.com/v1/forecast.json?key=609f907bf32f4932825110545240502&q=30.0715495,31.02&days=3&aqi=yes&alerts=no
    
    enum URLComplitions : String{
        case key = "?key="
        case longLatt = "&q="
        case https = "https:"
        case daysAqiAlerts = "&days=3&aqi=yes&alerts=no"
    }
    enum URLFor : String{
        case forecast = "/v1/forecast.json"
        case conditionImage
    }
    
    class func getURLFor(_ something: URLFor, longitudeAndLatitude: (Double,Double) = (30.0715495, 31.02), imageFileURL: String = "//cdn.weatherapi.com/weather/64x64/day/116.png") -> String{
        var result = ""
        switch something{
        case .forecast:
            result = baseURL + URLFor.forecast.rawValue + URLComplitions.key.rawValue + key
            result += URLComplitions.longLatt.rawValue + "\(String(longitudeAndLatitude.0)),\(String(longitudeAndLatitude.1))" + URLComplitions.daysAqiAlerts.rawValue
        case .conditionImage:
            result = URLComplitions.https.rawValue + imageFileURL
        }
        return result
    }
    
}
