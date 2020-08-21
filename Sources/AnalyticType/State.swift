//
//  State.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// State tracking (page load, etc.)

struct State: AnalyticTrackingType {
    var type: BuildableType = .trackingType
    var trackingType: TrackingType = .state
    var value: String?
    
    init(_ value: String) {
        self.value = value
    }
}

//if let order = order{
//    if case .pickup =
//        order.fulfilmentMethod {
//        fullfillment = .pickup }
//    else {
//        fullfillment = .delivery }
//}
