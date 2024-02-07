//
//  WeatherHomeViewModel.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation

class WeatherHomeViewModel : ObservableObject{
    var networkManager: NetworkManager?
    var bindResultToViewController : (()->()) = {}
    var sport: String!
    @Published var result : WeatherInfo?  {
        didSet{
            bindResultToViewController()
        }
    }
    
    init(networkManager: NetworkManager?) {
        self.networkManager = networkManager
    }
    
    func loadDataFromApi(){
        // TODO: for FUTURE, make function take lon & lat and pass it to the apiHelper
        let url = APIHelper.getURLFor(.forecast)
        print(url)
        networkManager?.fetch(url: url, type: WeatherInfo.self, complitionHandler: { weatherInfo in
            self.result = weatherInfo
        })
    }
    
    func checkMorningOrEvening()->Bool{
        
        var result : Bool
        
        let sunriseString = "2024-02-06 06:00"
        let sunsetString = "2024-02-06 17:30"
        
        let date = Date.now
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
        
        
        let sunrise = dateFormatter.date(from: sunriseString)!
        let sunset = dateFormatter.date(from: sunsetString)!
        
        
        switch date.compare(sunrise){
        case .orderedAscending:
                result = false
        case .orderedDescending, .orderedSame:
            result = true
        }
        
        switch date.compare(sunset){
        case .orderedAscending:
            result = result && true
        case .orderedDescending, .orderedSame:
            result = result && false
        }
        return result
    }
    
    
    func getWeatherInfo() -> WeatherInfo? {
        return result
    }
}
