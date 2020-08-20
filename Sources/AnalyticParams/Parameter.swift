//
//  Parameter.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

struct Parameter: AnalyticParams {
    var type: AnalyticType = .parameter
    var key: String?
    var value: Any?
    
    init(_ key: String, _ value: Any) {
        self.key = key
        self.value = value
    }
}

struct Parameters: AnalyticParams {
    var type: AnalyticType = .parameter
    var children: [AnalyticParams]?
    
    init(_ closure: (() -> [String: Any])) {
        self.children = closure().map { Parameter($0.key, $0.value) }
    }
}
