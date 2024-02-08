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
        return DateHandler().checkMorningOrEvening() ? ColorsManager.dayBackgroundColor : ColorsManager.nightBackgroundColor
    }
    
    func getAnimationName()->String{
        return DateHandler().checkMorningOrEvening() ? "day" : "night"

    }
    
    
    
}
