//
//  AnalyticEvent.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// Final internalized executable analytic event to fire
struct AnalyticEvent: AnalyticBuildable {
  var type: BuildableType = .event
  var trackingType: AnalyticTrackingType?
  var children: [AnalyticBuildable]?
  
  init(_ children: [AnalyticBuildable]?) {
    self.children = children
  }
}
