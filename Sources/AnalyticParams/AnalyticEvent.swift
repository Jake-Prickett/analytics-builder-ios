//
//  AnalyticEvent.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// Final executable analytic event to fire

internal struct AnalyticEvent: AnalyticParams {
    internal var type: AnalyticType = .event
    internal var trackingType: AnalyticTrackingType?
    internal var children: [AnalyticParams]?
    
    internal init(_ children: [AnalyticParams]?) {
        self.children = children
    }
}
