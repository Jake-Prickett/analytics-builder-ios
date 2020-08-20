//
//  AnalyticEvent.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

struct AnalyticEvent: AnalyticParams {
    var type: AnalyticType = .event
    var children: [AnalyticParams]?
    
    init(_ children: [AnalyticParams]?) {
        self.children = children
    }
}
