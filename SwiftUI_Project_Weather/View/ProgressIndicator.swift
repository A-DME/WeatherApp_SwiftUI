//
//  ProgressIndicator.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct ProgressIndicator: View {
    var body: some View {
        ZStack{
            Color(UIColor.lightGray)
                .ignoresSafeArea()
                .opacity(0.6)
            ProgressView()
                .scaleEffect(2.0, anchor: .center)
                .progressViewStyle(
                    CircularProgressViewStyle()
                )
        }
       
    }
}

#Preview {
    ProgressIndicator()
}
