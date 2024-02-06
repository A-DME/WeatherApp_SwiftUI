//
//  CustomText.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct CustomText: View {
    var text: String
    var size: CGFloat
    var fontstyle:String
    var isMorning:Bool
    var body: some View {
        Text(text)
            .font(.custom(fontstyle, size: size))
            .foregroundStyle(isMorning ? .black : .white)
            
    }
}

#Preview {
    CustomText(text: "Cairo", size: 36, fontstyle: "Inter-Bold", isMorning: false)
}
