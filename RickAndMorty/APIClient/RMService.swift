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
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Send RaM API call
    /// - Parameters:
    ///   - request: request instance
    ///   - completion: callback with data or error
    public func execute<T: Codable>(_ request: RMRequest, expecting type: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            //decode response
            do {
                let json = try JSONSerialization.jsonObject(with: data)
                print(String(describing: json))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else { return nil }
        
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        
        return request
    }
}
