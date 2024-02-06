//
//  WeatherHomeView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct WeatherHomeView: View {
    private let isMorning = TestBackground().checkMorningOrEvening()
    var body: some View {
        ZStack{
            Image(isMorning ? .morningBackground : .evening)
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .aspectRatio(1.5, contentMode: .fit)
            
            VStack{
                CurrentWeatherInfoView(location: "Cairo", temperature: "21˚", weatherStatus: "Partly Cloudy", HighTemp: "16˚", LowTemp: "6˚", lastUpdate: "05-02-2024  2:24", morning: isMorning)
                StaticTableView(morning: isMorning)
                GridView(isMorning: isMorning)
            }
            //ProgressIndicator()
        }
        
        
    }
}

#Preview {
    WeatherHomeView()
}
