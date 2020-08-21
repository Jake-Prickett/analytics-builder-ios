//
//  Track.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

/*
 Entry point into Analytics
 This interface allows for declarative analytic syntax
 ```
 Track {
    Action("Example Action")
    Parameter("key", "value")
 }
 ```
 */
public struct Track {
    private var event: AnalyticEvent
    
    private var type: AnalyticTrackingType {
        guard let trackingType = event.trackingType else {
            fatalError("Error: missing tracking type")
        }
        return trackingType
    }
    
    private var params: [Parameter] {
        return event.children?
            .filter { $0 is Parameter }
            .map { $0 as? Parameter }
            .compactMap { $0 }
        ?? []
    }
    
    private var isDebug: Bool {
        return event.children?.contains(where: { $0 is Debug }) ?? false
    }
    
    @discardableResult
    public init?(@AnalyticBuilder builder: () -> AnalyticBuildable) {
        guard let event = builder() as? AnalyticEvent else {
            preconditionFailure("Unexpected type returned from @AnalyticBuilder")
        }
        self.event = event
        call()
    }
    
    internal func call() {
        debugDescription()
    }
    
    internal func debugDescription() {
        guard isDebug else { return }
        print("Type: \(type.trackingType)")
        for (index, param) in params.enumerated() {
            if let key = param.key, let value = param.value {
                print("Parameter \(index+1) -- [\(key): \(value)]")
            }
        }
    }
}
