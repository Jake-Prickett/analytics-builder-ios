//
//  AnalyticBuilder.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

@_functionBuilder
public struct AnalyticBuilder {
    public static func buildBlock(_ params: AnalyticBuildable...) -> AnalyticBuildable {
        var event: AnalyticEvent = AnalyticEvent([])
        
        params.forEach { buildable in
            switch buildable {
            case let buildable as AnalyticTrackingType:
                guard event.trackingType == nil else {
                    fatalError("You cannot specify more than 1 `AnalyticTrackingType`")
                }
                event.trackingType = buildable
            case let buildable as Parameter:
                event.children?.append(buildable)
            case let buildable as Parameters:
                event.children?.append(contentsOf: buildable.children ?? [])
            case let buildable as Debug:
                event.children?.append(buildable)
            default:
                ()
            }
        }
        
        return event
    }
    
    public static func buildIf(_ param: AnalyticBuildable?) -> AnalyticBuildable {
        return param ?? AnalyticEvent([])
    }
}
