//
//  RMService.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 09.08.2023.
//

import Foundation

/// Primary API service object to get RaM data
final class RMService {
    /// shared singleton service
    static let shared = RMService()
    
    private init() {}
    
    /// Send RaM API call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback with data or error
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
