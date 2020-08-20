//
//  Action.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

struct Action: AnalyticParams {
    var type: AnalyticType = .trackingType
    var value: Any?
    
    init(_ value: String) {
        self.value = value
    }
}
