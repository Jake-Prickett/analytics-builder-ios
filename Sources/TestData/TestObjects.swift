//
//  File.swift
//  
//
//  Created by PRICKETT, JACOB on 8/21/20.
//

import Foundation

// Created trackable objects that define what parameters to track

struct TestTrackable1: AnalyticObject {
    var test1 = "TestTrackable1"
    var test2 = 12345
    
    var parameters: [String : String] {
        [test1: "\(test2)"]
    }
}

struct TestTrackable2: AnalyticObject {
    var test1 = "TestTrackable2"
    var test2 = 12345
    
    var parameters: [String : String] {
        [test1: "\(test2)"]
    }
}
