//
//  Parameter.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

public struct Parameter: AnalyticParams {
    public var type: AnalyticType = .parameter
    public var key: String?
    public var value: Any?
    
    public init(_ key: String, _ value: Any) {
        self.key = key
        self.value = value
    }
}

public struct Parameters: AnalyticParams {
    public var type: AnalyticType = .parameter
    public var children: [AnalyticParams]?
    
    public init(_ closure: (() -> [String: Any])) {
        self.children = closure().map { Parameter($0.key, $0.value) }
    }
}
