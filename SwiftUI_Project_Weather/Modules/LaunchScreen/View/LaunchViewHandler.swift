//
//  LaunchViewHandler.swift
//  SwiftUI_Project_Weather
//
//  Created by Mac on 07/02/2024.
//

import SwiftUI

struct LaunchViewHandler: View {
    @State private var isLaunching = true
    var body: some View {
        VStack{
            if isLaunching{
                LaunchScreenView()
            }else{
                WeatherHomeView()
            }
        }.onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                isLaunching = false
            }
        }
        
    }
}

#Preview {
    LaunchViewHandler()
}
