//
//  GridViewItem.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct GridViewItem: View {
    var title : String
    var value : String
    var isMorning : Bool
    var body: some View {
            VStack{
                CustomText(text: title, size: 16, fontstyle: "Inter-Regular", isMorning: isMorning)
                    .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                CustomText(text:value, size: 36,fontstyle: "Inter-SemiBold", isMorning: isMorning)
                    
            }
    
    }
}

#Preview {
    GridViewItem(title: "VISIBILITY", value: "10 Km", isMorning: true)
}
