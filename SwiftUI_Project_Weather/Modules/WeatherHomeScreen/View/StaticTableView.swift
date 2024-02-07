//
//  StaticTableView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct StaticTableView: View {
    var morning: Bool
    var forecastOf3Days: [Forecastday]?
    var body: some View {
            VStack{
                HStack{
                    CustomText(text: "3-Day Forecast", size: 15, fontstyle: "Inter-Regular", isMorning: morning)
                        .foregroundColor(morning ? .black : .white)
                    Spacer()
                }
                Divider()
                    .background(Color.black)
                NavigationLink(destination: WeatherDetailsView(hoursInDay: forecastOf3Days?[0].hour ?? [])){
                    StaticTableViewCell(forecastday: forecastOf3Days?[0] ?? Forecastday(), morning: morning)
                }.accentColor(.clear)
                
                Divider()
                    .background(Color.black)
                NavigationLink(destination: WeatherDetailsView(hoursInDay: forecastOf3Days?[1].hour ?? [])){
                    StaticTableViewCell(forecastday: forecastOf3Days?[1] ?? Forecastday(), morning: morning)
                }.background(.clear)
                Divider()
                    .background(Color.black)
                NavigationLink(destination: WeatherDetailsView(hoursInDay: forecastOf3Days?[2].hour ?? [])){
                    StaticTableViewCell(forecastday: forecastOf3Days?[2] ?? Forecastday(), morning: morning)
                }.background(.clear)
                
            }
            .frame(width: 300)
    }
}

#Preview {
    StaticTableView(morning: true, forecastOf3Days: [Forecastday()])
}
