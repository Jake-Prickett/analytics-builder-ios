//
//  Track.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

// Entry point into analytics
public struct Track {
    private var event: AnalyticEvent
    
    private var type: AnalyticTrackingType {
        guard let type = event.children?.first(where: { $0 is AnalyticTrackingType }) as? AnalyticTrackingType else {
            fatalError("Missing Type for Analytic Call")
        }
        return type
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
    public init?(@AnalyticBuilder builder: () -> AnalyticParams) {
        guard let event = builder() as? AnalyticEvent else {
            preconditionFailure("Unexpected type returned from @AnalyticBuilder")
        }
        self.event = event
        call()
    }
    
    internal func call() {
        // Make Analytics Call
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
