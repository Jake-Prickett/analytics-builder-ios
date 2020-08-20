//
//  AnalyticParams.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// Generic interface for both tracking type and parameters
public protocol AnalyticParams {
    var type: AnalyticType { get }
    var key: String? { get }
    var value: String? { get }
    var children: [AnalyticParams]? { get }
}

extension AnalyticParams {
    public var key: String? { nil }
    public var value: String? { nil }
    public var children: [AnalyticParams]? { nil }
}


// Tracking type (state vs action
protocol AnalyticTrackingType: AnalyticParams {
    var trackingType: TrackingType { get }
}

// Trackable objects that specift parameters
public protocol AnalyticTrackable {
    var parameters: [String: String] { get }
}
