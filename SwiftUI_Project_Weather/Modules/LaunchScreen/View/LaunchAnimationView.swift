//
//  Launch.swift
//  SwiftUI_Project_Weather
//
//  Created by Mac on 06/02/2024.
//

import SwiftUI
import Lottie

struct LaunchAnimationView: UIViewRepresentable {
   
    var animationFileName:String
    var loopMode : LottieLoopMode
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    func makeUIView(context: Context) -> some UIView {
        let animationView = LottieAnimationView(name: animationFileName)
        animationView.loopMode = loopMode
        animationView.play()
        animationView.contentMode = .scaleAspectFit
        return animationView
    }
}

#Preview {
    LaunchAnimationView(animationFileName: "day.json", loopMode: .loop)
}
