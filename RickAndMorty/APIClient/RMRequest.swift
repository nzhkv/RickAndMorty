//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 09.08.2023.
//

import Foundation

/// Object that responsts a single API call
final class RMRequest {
    
    /// api constains
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// desired endpoint
    private let endpoint: RMEndpoint
    
    /// path components if any
    private let pathComponents: [String]
    
    /// query arguments for api if any
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
    
    /// computers and constarcted url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// didasred http method
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: targey endpoint
    ///   - pathComponents: collection of path components
    ///   - querryParametrs: collection of querry parameters
    public init(endpoint: RMEndpoint, pathComponents: [String] = [], querryParametrs: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.querryParametrs = querryParametrs
    }
    
    convenience init?(url: URL) {
        let string = url.absoluteString
        if !string.contains(Constants.baseUrl) {
            return nil
        }
        let trimmed = string.replacingOccurrences(of: Constants.baseUrl+"/", with: "")
    }
}

extension RMRequest {
    static let listCharactersRequest = RMRequest(endpoint: .character)
}


