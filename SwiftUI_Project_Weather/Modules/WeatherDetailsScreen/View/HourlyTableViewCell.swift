//
//  HourlyTableViewCell.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI
import Kingfisher

struct HourlyTableViewCell: View {
    var hour: Hour
    var morning: Bool
    var body: some View {
        HStack{
            //TODO: - Make Condition to check if hour == current hour display "Now" instead of hour
            CustomText(text: hour.time, size: 36, fontstyle: "Inter-Regular", isMorning: morning)
                .foregroundColor(morning ? .black : .white)
                .frame(width: 80, alignment: .leading)
            
            Spacer()
//            Image(.cloudy)
//                .resizable()
//                .frame(width: 80, height: 80)
            KFImage(URL(string: APIHelper.getURLFor(.conditionImage, imageFileURL: hour.condition.icon)))
                .resizable()
                .frame(width: 80, height: 80)
            
            Spacer()
            
            CustomText(text: "\(Int(hour.tempC))°", size: 36, fontstyle: "Inter-Regular", isMorning: morning)
                .foregroundColor(morning ? .black : .white)
        }
        .padding()
        .frame(height: 60)
        
    }
}

#Preview {
    HourlyTableViewCell(hour: Hour(),morning: true)
}
