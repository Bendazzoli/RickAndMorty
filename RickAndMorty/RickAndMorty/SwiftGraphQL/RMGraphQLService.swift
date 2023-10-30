//
//  RMGraphQLService.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 27/10/23.
//

import Foundation
import SwiftGraphQLClient
import SwiftGraphQL
import GraphQL


final class RMGraphQLService {
    
    let url = URL(string: "https://rickandmortyapi.com/graphql")
    
    public static let shared = RMGraphQLService()
    
    public func execute(
        completion: @escaping (Result<String, Error>) -> Void
    ) {
        guard let url = url else { return }
        let query = RMGetAllLocationsResponse.query
        let request = URLRequest(url: url).querying(query)
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            guard let result = try? data?.decode(query) else {
                print("something went wrong")
                return 
            }

            print(result)
        }
        task.resume()
    }
}
