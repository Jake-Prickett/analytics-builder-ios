//
//  File.swift
//  
//
//  Created by PRICKETT, JACOB on 8/21/20.
//

import Foundation

public protocol AnalyticTrackable {
    func track(_ type: TrackingType, parameters: [String: String])
}
