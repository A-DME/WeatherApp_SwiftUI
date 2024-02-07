//
//  StaticTableViewCell.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI
import Kingfisher

struct StaticTableViewCell: View {
    var forecastday: Forecastday
    var morning: Bool
    var body: some View {
        HStack{
            //  TODO: - Make Condition to check if day == today display "Today" instead of day
            // TODO: forecastday.date to be wrapped into a function that converts the value of the date format "yyyy-MM-dd" to the suppressed case of the day... Ex: Tue, Wed... also try to inject the above TODO inside that function to return "Today" instead of today's name if the dates match
            CustomText(text: forecastday.date, size: 22, fontstyle: "Inter-Regular", isMorning: morning)
                .foregroundColor(morning ? .black : .white)
                .frame(width: 70, alignment: .leading)
            
            Spacer()
//            Image(.cloudy)
//                .resizable()
//                .frame(width: 48, height: 48)
            KFImage(URL(string: APIHelper.getURLFor(.conditionImage, imageFileURL: forecastday.day.condition.icon)))
                .resizable()
                .frame(width: 48, height: 48)
            
            Spacer()
            
            CustomText(text: "\(forecastday.day.mintempC)˚ - \(forecastday.day.maxtempC)˚", size: 22, fontstyle: "Inter-Regular",isMorning: morning)
                .foregroundColor(morning ? .black : .white)
        }
        .padding(.trailing)
        .frame(height: 40)
        
    }
}

#Preview {
    StaticTableViewCell(forecastday: Forecastday(),morning: true)
}
