//
//  File.swift
//  
//
//  Created by PRICKETT, JACOB on 8/21/20.
//

import Foundation

// Enable consumer to create "trackable objects" that are passed to analytic
// calls and supply information about what to track via the `parameters` property
public protocol AnalyticObject {
    var parameters: [String: String] { get }
}
