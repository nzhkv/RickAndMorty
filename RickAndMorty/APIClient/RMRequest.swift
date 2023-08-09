//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 09.08.2023.
//

import Foundation

/// Object that responsts a single API call
final class RMRequest {
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    private let pathComponents: [String]
    private let querryParametrs: [URLQueryItem]
    
    /// constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !querryParametrs.isEmpty {
            string += "?"
            let argumentString = querryParametrs.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public init(endpoint: RMEndpoint, pathComponents: [String] = [], querryParametrs: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.querryParametrs = querryParametrs
    }
}


