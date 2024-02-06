//
//  LaunchScreenView.swift
//  SwiftUI_Project_Weather
//
//  Created by Mac on 06/02/2024.
//

import SwiftUI

struct LaunchScreenView: View {
    
    private var isMorning : Bool = TestBackground().checkMorningOrEvening()
    
    var body: some View {
        ZStack{
            Color(isMorning ? ColorsManager.dayBackgroundColor : ColorsManager.nightBackgroundColor)
                .ignoresSafeArea()
            LaunchAnimationView(animationFileName: isMorning ? "day" : "night", loopMode: .loop)
                .frame(width: UIScreen.main.bounds.width, height: 250)
        }.onAppear(){
            
        }
    }
}

#Preview {
    LaunchScreenView()
}
