//
//  CryptocurrencyMapResponse.swift
//  CoinMarketCapAPI
//
//  Created by Tiago Sousa on 05/02/2025.
//

import Foundation

public struct CryptocurrencyMapResponse: Decodable {
    
    public let data: [Cryptocurrency]
}
