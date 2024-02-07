//
//  GridView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct GridView: View {
    var isMorning: Bool
    var body: some View {
        Grid (horizontalSpacing: 40, verticalSpacing: 20){
            GridRow {
                GridViewItem(title: "VISIBILITY", value: "10 Km", isMorning: isMorning)
                GridViewItem(title: "HUMIDITY", value: "36%", isMorning: isMorning)
            }
            GridRow {
                GridViewItem(title: "FEELS LIKE", value: "16˚", isMorning: isMorning)
                GridViewItem(title: "PRESSURE", value: "1,021", isMorning: isMorning)
            }
        }
    }
}

#Preview {
    GridView(isMorning: true)
}
