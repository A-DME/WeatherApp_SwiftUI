//
//  DateHandler.swift
//  SwiftUI_Project_Weather
//
//  Created by Mac on 07/02/2024.
//

import Foundation

struct DateHandler{
    func getDayShortName(day:String)->String{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from: day) ?? Date.now
        dateFormatter.dateFormat = "EE"
        let shortName = dateFormatter.string(from: date)
        
        return shortName
    }
    
    func getHoursOfDay(hours:[Hour])->[Hour]{
        var newHours : [Hour] = []
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        let currentDateString = dateFormatter.string(from: Date.now)
        
        let currentDate = dateFormatter.date(from: currentDateString)  // current date
        
        for item in hours{
            let itemDate = dateFormatter.date(from: item.time)  // time date
            let thresholdDate = Calendar.current.date(byAdding: .minute, value: 45, to: itemDate ?? Date.now) ?? Date.now // threshold
            
            if currentDate?.compare(thresholdDate) == .orderedAscending{
                newHours.append(item)
            }
        }
        return newHours
        
    }
    
    func isToday(date:String)->String{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let dayDate = dateFormatter.date(from: date) ?? Date.now
        
        let currentDateString = dateFormatter.string(from: Date.now)
        let currentDate = dateFormatter.date(from: currentDateString)!
        
        if dayDate.compare(currentDate) == .orderedSame{
            return "Today"
        }
        else{
            
            return getDayShortName(day: date)
        }
        
    }
    
    func checkMorningOrEvening()->Bool{
        
        var result : Bool
        
        let date = Date.now
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        let currentDate = dateFormatter.string(from: Date.now)
        
        let sunriseString = "\(currentDate) 06:00"
        let sunsetString = "\(currentDate) 17:30"

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
    
    func getHourFormat(dateTime:String, isUpcoming: Bool)->String{
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        let currentDateTime = dateFormatter.string(from: Date.now)
        let currentDate = currentDateTime.components(separatedBy: " ")[0]
        var currentHour = currentDateTime.components(separatedBy: " ")[1].components(separatedBy: ":")[0]
        let currentMinute = currentDateTime.components(separatedBy: " ")[1].components(separatedBy: ":")[1]
        let date = dateTime.components(separatedBy: " ")[0]
        var hour = dateTime.components(separatedBy: " ")[1].components(separatedBy: ":")[0]
        let toCompare = isUpcoming ? (Int(hour) ?? 0 - 1) : (Int(hour) ?? 0)
//        if isUpcoming{
//            currentHour = String(Int(currentHour) ?? 0 + 1)
//            hour = String(Int(hour) ?? 0 - 1)
//        }
        if (currentHour == hour || Int(currentHour) == toCompare ) && currentDate == date {
            return "Now"
        }else{
            hour = Int(hour) ?? 0 <= 11 ? removeLeadingZeroes(hour: hour) + " AM" : convertTo12HourFormat(hour: hour) + " PM"
            return hour
        }
        
    }
    
    func removeLeadingZeroes(hour: String) -> String {
            var inputString = hour
            if Int(hour) == 0 {
                return "12"
            } else {
                while inputString.hasPrefix("0"){
                    inputString.removeFirst()
                }
                return inputString
            }
    }
        
    func convertTo12HourFormat(hour: String) -> String{
        if hour == "12"{
            return hour
        } else  {
            return String(Int(hour)!-12)
        }
    }

}
