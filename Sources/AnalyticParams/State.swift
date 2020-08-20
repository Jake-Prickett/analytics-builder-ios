//
//  State.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// State tracking (page load, etc.)

struct State: AnalyticTrackingType {
    var type: AnalyticType = .trackingType
    var trackingType: TrackingType = .state
    var value: String?
    
    init(_ value: String) {
        self.value = value
    }
}
