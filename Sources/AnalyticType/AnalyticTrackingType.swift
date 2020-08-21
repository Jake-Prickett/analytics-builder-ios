//
//  AnalyticTrackingType.swift
//  
//
//  Created by PRICKETT, JACOB on 8/21/20.
//

import Foundation

// Tracking type (state vs action)
protocol AnalyticTrackingType: AnalyticBuildable {
  var trackingType: TrackingType { get }
}
