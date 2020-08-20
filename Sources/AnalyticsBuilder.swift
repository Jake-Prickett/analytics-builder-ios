//
//  AnalyticBuilder.swift
//  
//
//  Created by PRICKETT, JACOB on 8/20/20.
//

@_functionBuilder
struct AnalyticBuilder {
    static func buildBlock(_ params: AnalyticParams...) -> AnalyticParams {
        let resultParams = params.filter { $0.children == nil } + params.compactMap { $0.children }.joined()
        
        // Multiple Types
        if resultParams
            .filter({ $0 is State })
            .count > 1 {
            fatalError("You cannot specify more than 1 `Type`")
        }
        
        return AnalyticEvent(resultParams)
    }
    
    static func buildIf(_ param: AnalyticParams?) -> AnalyticParams {
        if let param = param {
            return param
        }
        return AnalyticEvent([])
    }
}
