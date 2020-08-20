//
//  AnalyticParams.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

protocol AnalyticParams {
    var type: AnalyticType { get }
    var key: String? { get }
    var value: String? { get }
    var children: [AnalyticParams]? { get }
}

extension AnalyticParams {
    var key: String? { nil }
    var value: String? { nil }
    var children: [AnalyticParams]? { nil }
}
