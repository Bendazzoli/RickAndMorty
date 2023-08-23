//
//  RMSerivce.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 22/08/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMSerivce {
    
    /// Shared singleton instance
    static let shared = RMSerivce()
    
    /// private constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
