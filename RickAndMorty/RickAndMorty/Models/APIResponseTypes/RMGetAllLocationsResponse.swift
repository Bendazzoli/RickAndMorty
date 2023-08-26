//
//  RMGetAllLocationsResponse.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 26/08/23.
//

import Foundation

struct RMGetAllLocationsResponse: Codable {
    let info: RMInfo
    let results: [RMLocation]
}
