//
//  LaunchViewModel.swift
//  SwiftUI_Project_Weather
//
//  Created by Mac on 06/02/2024.
//

import Foundation
import CoreGraphics


class LaunchViewModel{
    
    func getBackgroundColor()->CGColor{
        return TestBackground().checkMorningOrEvening() ? ColorsManager.dayBackgroundColor : ColorsManager.nightBackgroundColor
    }
    
    func getAnimationName()->String{
        return TestBackground().checkMorningOrEvening() ? "day" : "night"

    }
    
    
    
}
