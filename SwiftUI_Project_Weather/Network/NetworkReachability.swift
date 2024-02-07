//
//  NetworkReachability.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation
import Network


class NetworkReachability: ObservableObject{
    
    static let networkReachability = NetworkReachability()
    var monitor = NWPathMonitor()
    
    var monitorQueue = DispatchQueue(label: "network")
    @Published var networkStatus : Bool = false

    private init(){
        monitor.start(queue: monitorQueue)
        
        monitor.pathUpdateHandler = {[weak self] path in
              
                    self?.networkStatus = (path.status == .satisfied)
             
            
        }
  
    }
    
}
