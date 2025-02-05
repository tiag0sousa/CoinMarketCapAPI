//
//  CryptocurrencyMapResponse.swift
//  CoinMarketCapAPI
//
//  Created by Tiago Sousa on 05/02/2025.
//

import Foundation

public struct CryptocurrencyMapResponse: Decodable, Sendable {
    
    public let data: [Cryptocurrency]
}
