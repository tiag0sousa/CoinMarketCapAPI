import Foundation

public enum CoinMarketCapAPIError: Error {
    
    case invalidURL
}

public class CoinMarketCapAPI {

    private let config: CoinMarketCapAPIConfig
    
    public init(config: CoinMarketCapAPIConfig) {
        
        self.config = config
    }
}

public extension CoinMarketCapAPI {
    
    func cryptocurrencyMap(symbols: [String]) async throws -> CryptocurrencyMapResponse {
        
        let endpoint = "/v1/cryptocurrency/map"
        
        guard let url = URL(string: self.config.environment.baseURL + endpoint) else {
            
            throw CoinMarketCapAPIError.invalidURL
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue(self.config.apiKey, forHTTPHeaderField: "X-CMC_PRO_API_KEY")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let (data, _) = try await URLSession.shared.data(for: request)
        
        return try JSONDecoder().decode(CryptocurrencyMapResponse.self, from: data)
    }
}
