//
//  Cryptocurrency.swift
//  CoinMarketCapAPI
//
//  Created by Tiago Sousa on 05/02/2025.
//

import Foundation

public struct Cryptocurrency: Decodable {

    public let id: Int
    public let rank: Int
    public let name: String
    public let symbol: String
    public let slug: String
}
