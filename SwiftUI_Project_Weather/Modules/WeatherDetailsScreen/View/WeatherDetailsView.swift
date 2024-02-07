//
//  WeatherDetailsView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct WeatherDetailsView: View {
    var body: some View {
        ZStack{
            Image(.morningBackground)
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .aspectRatio(1.5, contentMode: .fit)
            
            
            VStack{
                HStack{
                    Button("←"){
//                TODO: type here logic for navigating back to home screen
                    }
                    .font(.largeTitle).foregroundColor(.white)
                    Spacer()
                }
                .padding()
                HourlyTableView(hours: ["Now","3PM", "4PM", "5PM"])
                    .padding()
                Spacer()
            }
        }.navigationBarBackButtonHidden(true)
            
        
    }
}

#Preview {
    WeatherDetailsView()
}
