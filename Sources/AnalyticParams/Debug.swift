//
//  Debug.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

/// Toss this in the `Track` call if you want to enable debug mode for your analytic event
public struct Debug: AnalyticBuildable {
  public var type: BuildableType = .debug
}
