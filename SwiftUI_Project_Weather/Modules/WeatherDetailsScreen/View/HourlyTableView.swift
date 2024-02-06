//
//  HourlyTableView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct HourlyTableView: View {
    var hours: [String]
    var body: some View {
        VStack{
            ForEach(hours, id: \.self){item in
                HourlyTableViewCell(hour: item, temp: 15.56, morning: false)
            }
            
        }
    }
}

#Preview {
    HourlyTableView(hours: ["Now","3PM", "4PM"])
}
