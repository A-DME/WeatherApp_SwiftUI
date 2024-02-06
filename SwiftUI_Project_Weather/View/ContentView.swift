//
//  ContentView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct ContentView: View {
    var viewModel = WeatherHomeViewModel(networkManager: NetworkManager())
    func display(){
        viewModel.loadDataFromApi()
        viewModel.bindResultToViewController = {
            print(viewModel.getWeatherInfo()?.location.country)
        }
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear{
            self.display()
        }
    }
}

#Preview {
    ContentView()
}
