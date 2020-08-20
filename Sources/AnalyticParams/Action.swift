//
//  Action.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

public struct Action: AnalyticTrackingType {
    public var type: AnalyticType = .trackingType
    public var trackingType: TrackingType = .action
    public var value: String?
    
    public init(_ value: String) {
        self.value = value
    }
}
