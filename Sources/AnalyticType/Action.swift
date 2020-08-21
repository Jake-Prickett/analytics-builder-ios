//
//  Action.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// Analytic action state (button tap, etc.)

public struct Action: AnalyticTrackingType {
    public var type: BuildableType = .trackingType
    public var trackingType: TrackingType = .action
    public var value: String?
    
    public init(_ value: String) {
        self.value = value
    }
}
