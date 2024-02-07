//
//  CurrentWeatherInfoView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI
import Kingfisher

struct CurrentWeatherInfoView: View {
    
    var weatherInfo: WeatherInfo?
    var morning:Bool
    var body: some View {
        VStack(alignment: .center){
            CustomText(text: weatherInfo?.location.name ?? "", size: 36, fontstyle: "Inter-SemiBold",isMorning: morning)
            CustomText(text: "\(weatherInfo?.current.tempC ?? 0.0)˚", size: 64, fontstyle: "Inter-SemiBold", isMorning: morning)
            CustomText(text: weatherInfo?.current.condition.text ?? "", size: 32, fontstyle: "Inter-Regular", isMorning: morning)
            HStack{
                Spacer()
                CustomText(text: "H:", size: 32, fontstyle: "Inter-Regular", isMorning: morning)
                
                CustomText(text: "\(weatherInfo?.forecast.forecastday[0].day.maxtempC ?? 0.0)˚", size: 32, fontstyle: "Inter-Regular", isMorning: morning)
                Spacer()
                CustomText(text: "L:", size: 32, fontstyle: "Inter-Regular", isMorning: morning)
                
                CustomText(text: "\(weatherInfo?.forecast.forecastday[0].day.mintempC ?? 0.0)˚", size: 32, fontstyle: "Inter-Regular", isMorning: morning)
                Spacer()
                
            }.padding(.vertical, -8)
                
//            Image(.cloudy)
            KFImage(URL(string: APIHelper.getURLFor(.conditionImage, imageFileURL: weatherInfo?.current.condition.icon ?? "")))
            CustomText(text: weatherInfo?.current.lastUpdated ?? "", size: 14, fontstyle: "Inter-Regular", isMorning: morning)
                .padding(.top, -10)
        }
        
    }
}

#Preview {
    CurrentWeatherInfoView(weatherInfo: WeatherInfo(), morning: true)
}
