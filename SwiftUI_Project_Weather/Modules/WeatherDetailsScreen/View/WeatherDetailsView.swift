//
//  WeatherDetailsView.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import SwiftUI

struct WeatherDetailsView: View {
    @Environment(\.dismiss) var dismiss
    var hoursInDay: [Hour]
    var isMorning : Bool = DateHandler().checkMorningOrEvening()
    
    @StateObject var networkReachability = NetworkReachability.networkReachability
    @State private var isPresentingAlert : Bool = false
    
    var body: some View {
        ZStack{
            Image(isMorning ? .morningBackground : .evening)
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
                .aspectRatio(1.5, contentMode: .fit)
            
            ScrollView{
                VStack{
                    HourlyTableView(hours: hoursInDay,isMorning: isMorning)
                        .padding(EdgeInsets(top: 100, leading: 0, bottom: 32, trailing: 0))
                    Spacer()
                }
            }.ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("←"){
                            dismiss()
                        }
                        .font(.largeTitle).foregroundColor(isMorning ? .black : .white)
                    }
                }
        .alert("Connection Lost", isPresented: $isPresentingAlert) {
            Button("OK", role: .none){
                
            }
        }message: {
            Text("You're offline")
        }
        .onAppear(){
            if networkReachability.networkStatus{
                isPresentingAlert = false
                
            }else{
                isPresentingAlert = true
            }
            
        }.onReceive(networkReachability.$networkStatus, perform: { _ in
            if networkReachability.networkStatus{
                isPresentingAlert = false
                
            }else{
                isPresentingAlert = true
            }
        })
            
        
    }
}

#Preview {
    WeatherDetailsView(hoursInDay: [])
}
