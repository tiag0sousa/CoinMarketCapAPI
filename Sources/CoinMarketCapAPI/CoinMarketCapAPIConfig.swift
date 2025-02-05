//
//  CoinMarketCapAPIConfig.swift
//  CoinMarketCapAPI
//
//  Created by Tiago Sousa on 05/02/2025.
//

import Foundation

public struct CoinMarketCapAPIConfig {
    
    public let apiKey: String
    public let environment: CoinMarketCapAPIEnvironment
    
    public init(apiKey: String,
                environment: CoinMarketCapAPIEnvironment) {

        self.apiKey = apiKey
        self.environment = environment
    }
}

public enum CoinMarketCapAPIEnvironment {

    case production
    case sandbox
    
    var baseURL: String {
        
        switch self {
            
        case .production:
            return "https://pro-api.coinmarketcap.com"

        case .sandbox:
            return "https://sandbox-api.coinmarketcap.com"
        }
    }
}
