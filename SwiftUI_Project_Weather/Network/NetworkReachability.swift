//
//  NetworkReachability.swift
//  SwiftUI_Project_Weather
//
//  Created by Ahmed Abu-zeid on 06/02/2024.
//

import Foundation
import Alamofire


class NetworkReachability{
    
    let reachabilityManager =  NetworkReachabilityManager()

    func checkReachability(connectedHandler:@escaping ()->Void,notConnectedHandler:@escaping()->Void){
        reachabilityManager?.startListening(onUpdatePerforming: { status in
            switch status {
                case .notReachable:
                    print("not reachable")
                    connectedHandler()
                
                case .reachable, .unknown:
                    print("reachable")
                    notConnectedHandler()
            }
        })
    }
}
