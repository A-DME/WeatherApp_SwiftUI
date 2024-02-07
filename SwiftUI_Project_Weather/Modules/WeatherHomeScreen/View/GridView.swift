//
//  GridView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct GridView: View {
    var currentInfo: WeatherInfo
    var isMorning: Bool
    var body: some View {
        Grid (horizontalSpacing: 40, verticalSpacing: 20){
            GridRow {
                GridViewItem(title: "VISIBILITY", value: "\(currentInfo.current.visKM) Km", isMorning: isMorning)
                GridViewItem(title: "HUMIDITY", value: "\(currentInfo.current.humidity)%", isMorning: isMorning)
            }
            GridRow {
                GridViewItem(title: "FEELS LIKE", value: "\(currentInfo.current.tempC)˚", isMorning: isMorning)
                GridViewItem(title: "PRESSURE", value: "\(currentInfo.current.pressureMB)", isMorning: isMorning)
            }
        }
        .onAppear{
            print(currentInfo.current.humidity)
        }
    }
}

#Preview {
    GridView(currentInfo: WeatherInfo(), isMorning: true)
}
