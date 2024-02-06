//
//  StaticTableViewCell.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct StaticTableViewCell: View {
    var day: String
    var minTemp, maxTemp: Double
    var morning: Bool
    var body: some View {
        HStack{
            //            TODO: - Make Condition to check if day == today display "Today" instead of day
            CustomText(text: day, size: 22, fontstyle: "Inter-Regular", isMorning: morning)
                .foregroundColor(morning ? .black : .white)
                .frame(width: 70, alignment: .leading)
            
            Spacer()
            Image(.cloudy)
                .resizable()
                .frame(width: 48, height: 48)
            
            Spacer()
            
            CustomText(text: "\(minTemp)° - \(maxTemp)°", size: 22, fontstyle: "Inter-Regular",isMorning: morning)
                .foregroundColor(morning ? .black : .white)
        }
        .padding(.trailing)
        .frame(height: 40)
        
    }
}

#Preview {
    StaticTableViewCell(day: "Wed", minTemp: 7.8, maxTemp: 15.5,morning: true)
}
