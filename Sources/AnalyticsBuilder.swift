//
//  AnalyticBuilder.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

@_functionBuilder
public struct AnalyticBuilder {
    public static func buildBlock(_ params: AnalyticBuildable...) -> AnalyticBuildable {
        let resultParams = params.filter { $0.children == nil } + params.compactMap { $0.children }.joined()
        
        // TODO: Try and switch on the type of param, from there append to children or adjust the analytic type value
        
        // Multiple Types
        if resultParams
            .filter({ $0 is AnalyticTrackingType })
            .count > 1
        {
            fatalError("You cannot specify more than 1 `AnalyticTrackingType`")
        }
        
        return AnalyticEvent(resultParams)
    }
    
    public static func buildIf(_ param: AnalyticBuildable?) -> AnalyticBuildable {
        return param ?? AnalyticEvent([])
    }
}
