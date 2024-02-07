//
//  WeatherDetailsView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct WeatherDetailsView: View {
    @Environment(\.dismiss) var dismiss
    var hoursInDay: [Hour]
    var body: some View {
        ZStack{
            Image(.morningBackground)
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .aspectRatio(1.5, contentMode: .fit)
            
            
            ScrollView{
                VStack{
                    HourlyTableView(hours: hoursInDay)
                        .padding(EdgeInsets(top: 80, leading: 0, bottom: 32, trailing: 0))
                    Spacer()
                }
            }.ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("←"){
                    // TODO: type here logic for navigating back to home screen -- Done
                            dismiss()
                        }
                        .font(.largeTitle).foregroundColor(.white)
                    }
                }
            
        
    }
}

#Preview {
    WeatherDetailsView(hoursInDay: [])
}
