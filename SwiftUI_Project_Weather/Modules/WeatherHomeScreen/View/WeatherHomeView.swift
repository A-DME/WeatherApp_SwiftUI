//
//  WeatherHomeView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct WeatherHomeView: View {
    private let isMorning = TestBackground().checkMorningOrEvening()
    
    @State private var isPresentingProgressIndicator = false
    
    @StateObject private var viewModel = WeatherHomeViewModel(networkManager: NetworkManager())
    
    @State private var weatherInfo : WeatherInfo?
    var body: some View {
        NavigationView{
            ZStack{
                Image(isMorning ? .morningBackground : .evening)
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea()
                    .aspectRatio(1.5, contentMode: .fit)
                
                VStack{
                    Spacer()
                    Spacer()
                    CurrentWeatherInfoView(
                        location:weatherInfo?.location.name ?? "",
                        temperature: String(weatherInfo?.current.tempC ?? 0.0)+"˚" ,
                        weatherStatus: weatherInfo?.current.condition.text ?? "",
                        HighTemp: String(weatherInfo?.forecast.forecastday[0].day.maxtempC ?? 0.0)+"˚",
                        LowTemp: String(weatherInfo?.forecast.forecastday[0].day.mintempC ?? 0.0)+"˚",
                        lastUpdate: weatherInfo?.current.lastUpdated ?? "",
                        morning: isMorning
                    )
                    Spacer()
                    StaticTableView(morning: isMorning)
                    Spacer()
                    GridView(isMorning: isMorning)
                    Spacer()
                }
                if isPresentingProgressIndicator{
                    ProgressIndicator()
                }
            }
            .onAppear(){
                isPresentingProgressIndicator = true
                viewModel.loadDataFromApi()
                viewModel.bindResultToViewController = {
                    weatherInfo = viewModel.getWeatherInfo()
                    isPresentingProgressIndicator = false
                }
            }
        }
        
        
    }
}

#Preview {
    WeatherHomeView()
}
