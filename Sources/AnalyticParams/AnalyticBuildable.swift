//
//  AnalyticBuildable.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

/// Base protocol for the `functionBuilder`
public protocol AnalyticBuildable {
  var type: BuildableType { get }
  var key: String? { get }
  var value: String? { get }
  var children: [AnalyticBuildable]? { get }
}

// Provide default values for clean implementation
extension AnalyticBuildable {
  public var key: String? { nil }
  public var value: String? { nil }
  public var children: [AnalyticBuildable]? { nil }
}
