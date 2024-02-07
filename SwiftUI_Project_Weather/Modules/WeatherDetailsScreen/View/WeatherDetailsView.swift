//
//  WeatherDetailsView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct WeatherDetailsView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image(.morningBackground)
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .aspectRatio(1.5, contentMode: .fit)
            
            
            VStack{
                HourlyTableView(hours: ["Now","3PM", "4PM", "5PM"])
                    .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 0))
                Spacer()
            }
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
    WeatherDetailsView()
}
