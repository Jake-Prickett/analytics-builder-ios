//
//  AnalyticParams.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// Generic interface for both tracking type and parameters
public protocol AnalyticBuildable {
  var type: BuildableType { get }
  var key: String? { get }
  var value: String? { get }
  var children: [AnalyticBuildable]? { get }
}

// Default values
extension AnalyticBuildable {
  public var key: String? { nil }
  public var value: String? { nil }
  public var children: [AnalyticBuildable]? { nil }
}
