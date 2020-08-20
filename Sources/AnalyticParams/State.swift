//
//  State.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

struct State: AnalyticParams {
    var type: AnalyticType = .trackingType
    var value: String?
    
    init(_ value: String) {
        self.value = value
    }
}
