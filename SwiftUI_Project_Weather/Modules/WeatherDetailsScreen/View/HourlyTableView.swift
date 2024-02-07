//
//  HourlyTableView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct HourlyTableView: View {
    var hours: [Hour]
    var body: some View {
        VStack{
            ForEach(hours){item in
                HourlyTableViewCell(hour: item, morning: false)
            }
            
        }
    }
}

#Preview {
    HourlyTableView(hours: [])
}
