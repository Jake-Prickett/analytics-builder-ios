//
//  Track.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

import Foundation

struct Track {
    private var event: AnalyticEvent
    
    private var type: State {
        guard let type = event.children?.first(where: { $0 is State }) as? State else {
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
    init?(@AnalyticBuilder builder: () -> AnalyticParams) {
        guard let params = builder() as? AnalyticEvent else {
            preconditionFailure("Unexpected type returned from @AnalyticBuilder")
        }
        self.event = params
        call()
    }
    
    internal func call() {
        // Make Analytics Call
        debugDescription()
    }
    
    internal func debugDescription() {
        guard isDebug else { return }
        print("Type: \(type.type)")
        for (index, param) in params.enumerated() {
            if let key = param.key, let value = param.value {
                print("Parameter \(index+1) -- [\(key): \(value)]")
            }
        }
    }
}
