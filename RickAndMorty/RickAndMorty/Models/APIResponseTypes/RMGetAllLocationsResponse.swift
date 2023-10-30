//
//  RMGetAllLocationsResponse.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 26/08/23.
//

import Foundation
import SwiftGraphQL

struct RMGetAllLocationsResponse: Identifiable, Equatable {
    static func == (lhs: RMGetAllLocationsResponse, rhs: RMGetAllLocationsResponse) -> Bool {
        lhs.id == rhs.id
    }
    
    let id: String
    let info: RMInfo?
    let results: [RMLocation?]?
}
