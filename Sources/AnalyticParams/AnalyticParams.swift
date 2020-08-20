//
//  AnalyticParams.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

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

protocol AnalyticTrackingType: AnalyticParams {
    var trackingType: TrackingType { get }
}
