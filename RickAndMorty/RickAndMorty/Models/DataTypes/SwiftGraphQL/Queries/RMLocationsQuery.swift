//
//  RMLocationsQuery.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 27/10/23.
//

import Foundation
import SwiftGraphQL

extension RMGetAllLocationsResponse {
    static let selection = Selection.Locations<RMGetAllLocationsResponse> {
        let info = try $0.info(selection: RMInfo.selection.nullable)
        let results = try $0.results(selection: RMLocation.selection.nullable.list.nullable)
        
        return RMGetAllLocationsResponse(id: "", info: info, results: results)
    }
    
    static let query = Selection.Query<RMGetAllLocationsResponse> {
        try $0.locations(selection: RMGetAllLocationsResponse.selection.nullable)
        ?? RMGetAllLocationsResponse(id: "", info: nil, results: nil)
    }
}
