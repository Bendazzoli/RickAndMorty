//
//  RMLocationQuery.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 27/10/23.
//

import Foundation
import SwiftGraphQL

extension RMLocation {
    static let selection = Selection.Location<RMLocation> {
        let id = try $0.id() ?? ""
        let name = try $0.name() ?? "N/A name"
        let type = try $0.type() ?? "N/A type"
        
        return RMLocation(id: id, name: name, type: type)
    }
}
