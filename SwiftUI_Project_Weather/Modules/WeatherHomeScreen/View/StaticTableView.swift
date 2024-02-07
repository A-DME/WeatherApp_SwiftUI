//
//  StaticTableView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct StaticTableView: View {
    var morning: Bool
    var body: some View {
            VStack{
                HStack{
                    CustomText(text: "3-Day Forecast", size: 15, fontstyle: "Inter-Regular", isMorning: morning)
                        .foregroundColor(morning ? .black : .white)
                    Spacer()
                }
                Divider()
                    .background(Color.black)
                NavigationLink(destination: WeatherDetailsView()){
                    StaticTableViewCell(day: "Today", minTemp: 7.8, maxTemp: 15.5, morning: morning)
                }.accentColor(.clear)
                
                Divider()
                    .background(Color.black)
                NavigationLink(destination: WeatherDetailsView()){
                    StaticTableViewCell(day: "Wed", minTemp: 6.4, maxTemp: 16.1, morning: morning)
                }.background(.clear)
                Divider()
                    .background(Color.black)
                NavigationLink(destination: WeatherDetailsView()){
                    StaticTableViewCell(day: "Thu", minTemp: 8.7, maxTemp: 17.8, morning: morning)
                }.background(.clear)
                
            }
            .frame(width: 300)
    }
}

#Preview {
    StaticTableView(morning: true)
}
