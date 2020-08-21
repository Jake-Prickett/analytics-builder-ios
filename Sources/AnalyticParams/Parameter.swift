//
//  Parameter.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// Basic single parameter with a key/value pair
public struct Parameter: AnalyticBuildable {
  public var type: BuildableType = .parameter
  public var key: String?
  public var value: String?
  
  public init(
    _ key: String,
    _ value: String
  ) {
    self.key = key
    self.value = value
  }
}

// Customizable inits for closure/methods and trackable objects
public struct Parameters: AnalyticBuildable {
  public var type: BuildableType = .parameter
  public var children: [AnalyticBuildable]? = []
  
  // Initialize based off of closure/method return
  public init(_ closure: (() -> [String: String])) {
    self.children?.append(contentsOf: closure().map { Parameter($0.key, $0.value) })
  }
  
  // Pass multiple objects - `Parameter(obj1, obj2)`
  public init(_ trackable: AnalyticObject...) {
    trackable.forEach {
      self.children?.append(contentsOf: $0.parameters.map { Parameter($0.key, $0.value) })
    }
  }
}
