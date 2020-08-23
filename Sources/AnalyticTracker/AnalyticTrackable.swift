//
//  File.swift
//  
//
//  Created by PRICKETT, JACOB on 8/21/20.
//

import Foundation

/// Analytic tracking implementation
/// TODO: Need to determine best way to tie in abstracted analytic provider
public protocol AnalyticTrackable {
  func track(_ type: TrackingType, parameters: [String: String])
}
