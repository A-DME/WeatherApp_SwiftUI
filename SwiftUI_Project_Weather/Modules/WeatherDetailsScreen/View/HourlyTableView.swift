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
                if item == DateHandler().getHoursOfDay(hours: hours).first{
                    HourlyTableViewCell(hour: item, isFirst: true, morning: isMorning)
                } else {
                    HourlyTableViewCell(hour: item, isFirst: false, morning: isMorning)

                }
            }
        }
    }
}

#Preview {
    HourlyTableView(hours: [],isMorning: true)
}
