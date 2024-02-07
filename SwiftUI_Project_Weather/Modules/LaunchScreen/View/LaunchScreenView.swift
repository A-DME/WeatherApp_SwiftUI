//
//  LaunchScreenView.swift
//  SwiftUI_Project_Weather
//
//  Created by Mac on 06/02/2024.
//

import SwiftUI

struct LaunchScreenView: View {
        
    var viewModel = LaunchViewModel()
    
    var body: some View {
        ZStack{
            
            Color(viewModel.getBackgroundColor())
                .ignoresSafeArea()
            LaunchAnimationView(animationFileName: viewModel.getAnimationName(), loopMode: .loop)
                .frame(width: UIScreen.main.bounds.width, height: 250)
        }

    }
}

#Preview {
    LaunchScreenView()
}
