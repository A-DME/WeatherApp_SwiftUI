//
//  NetworkReachability.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation
import Network


class NetworkReachability: ObservableObject{
    
    var monitor = NWPathMonitor()
    
    var monitorQueue = DispatchQueue(label: "network")
    // TODO: - Search Why does it Lag or fail to detect network state
    @Published var networkStatus : Bool = true // should be false

    init(){
        
        monitor.pathUpdateHandler = {[weak self] path in
                DispatchQueue.main.async {
                    self?.networkStatus = path.status == .satisfied
                }
            
        }
        monitor.start(queue: monitorQueue)
  
    }
    
}
