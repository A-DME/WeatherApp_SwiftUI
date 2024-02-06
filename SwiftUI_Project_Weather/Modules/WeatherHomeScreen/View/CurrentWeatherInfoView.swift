//
//  CurrentWeatherInfoView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct CurrentWeatherInfoView: View {
    
    var location:String
    var temperature : String
    var weatherStatus : String
    var HighTemp : String
    var LowTemp : String
    var lastUpdate: String
    var morning:Bool
    var body: some View {
        VStack(alignment: .center){
            CustomText(text: location, size: 36, fontstyle: "Inter-SemiBold",isMorning: morning)
            CustomText(text: temperature, size: 64, fontstyle: "Inter-SemiBold", isMorning: morning)
            CustomText(text: weatherStatus, size: 36, fontstyle: "Inter-Regular", isMorning: morning)
            HStack{
                CustomText(text: "H:", size: 36, fontstyle: "Inter-Regular", isMorning: morning)
                
                CustomText(text: HighTemp, size: 36, fontstyle: "Inter-Regular", isMorning: morning)
                
                CustomText(text: "L:", size: 36, fontstyle: "Inter-Regular", isMorning: morning)
                
                CustomText(text: LowTemp, size: 36, fontstyle: "Inter-Regular", isMorning: morning)
                
            }.padding(.vertical, -10)
            Image(.cloudy)
            CustomText(text: lastUpdate, size: 14, fontstyle: "Inter-Regular", isMorning: morning)
                .padding(.top, -20)
        }
        
    }
}

#Preview {
    CurrentWeatherInfoView(location: "Cairo", temperature: "21˚", weatherStatus: "Partly Cloudy", HighTemp: "16˚", LowTemp: "6˚",lastUpdate: "05-02-2024  2:24", morning: true)
}
