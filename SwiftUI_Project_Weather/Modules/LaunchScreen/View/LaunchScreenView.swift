//
//  LaunchScreenView.swift
//  SwiftUI_Project_Weather
//
//  Created by Mac on 06/02/2024.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @State private var isPresentingAlert : Bool = false
    
    var viewModel = LaunchViewModel()
    
    @StateObject var networkReachability = NetworkReachability.networkReachability
    
    var body: some View {
        ZStack{
            
            Color(viewModel.getBackgroundColor())
                .ignoresSafeArea()
            LaunchAnimationView(animationFileName: viewModel.getAnimationName(), loopMode: .loop)
                .frame(width: UIScreen.main.bounds.width, height: 250)
        }
        .alert("Connection Lost", isPresented: $isPresentingAlert){
            Button("OK", role: .none){
                
            }
        }message: {
            Text("You're offline")
        }
        .onReceive(networkReachability.$networkStatus, perform: { _ in
            
            print(networkReachability.networkStatus)

            if networkReachability.networkStatus{
                isPresentingAlert = false
            }else{
                isPresentingAlert = true
            }
        })
        
    }
}

#Preview {
    LaunchScreenView()
}
