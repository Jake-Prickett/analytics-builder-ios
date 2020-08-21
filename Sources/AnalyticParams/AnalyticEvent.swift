//
//  AnalyticEvent.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// Final internalized executable analytic event to fire

internal struct AnalyticEvent: AnalyticBuildable {
    internal var type: BuildableType = .event
    internal var trackingType: AnalyticTrackingType?
    internal var children: [AnalyticBuildable]?
    
    internal init(_ children: [AnalyticBuildable]?) {
        self.children = children
    }
}
