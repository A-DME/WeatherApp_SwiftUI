//
//  HourlyTableView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct HourlyTableView: View {
    var hours: [Hour]
    var isMorning:Bool
    var body: some View {
        VStack{
            ForEach(DateHandler().getHoursOfDay(hours: hours)){item in
                HourlyTableViewCell(hour: item, morning: isMorning)
            }
            
        }
    }
}

#Preview {
    HourlyTableView(hours: [],isMorning: true)
}
