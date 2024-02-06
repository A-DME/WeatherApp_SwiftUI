//
//  HourlyTableViewCell.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct HourlyTableViewCell: View {
    var hour: String
    var temp: Double
    var morning: Bool
    var body: some View {
        HStack{
            //TODO: - Make Condition to check if hour == current hour display "Now" instead of hour
            CustomText(text: hour, size: 36, fontstyle: "Inter-Regular", isMorning: morning)
                .foregroundColor(morning ? .black : .white)
                .frame(width: 80, alignment: .leading)
            
            Spacer()
            Image(.cloudy)
                .resizable()
                .frame(width: 80, height: 80)
            
            Spacer()
            
            CustomText(text: "\(Int(temp))°", size: 36, fontstyle: "Inter-Regular", isMorning: morning)
                .foregroundColor(morning ? .black : .white)
        }
        .padding()
        .frame(height: 60)
        
    }
}

#Preview {
    HourlyTableViewCell(hour: "Now", temp: 15.5,morning: true)
}
