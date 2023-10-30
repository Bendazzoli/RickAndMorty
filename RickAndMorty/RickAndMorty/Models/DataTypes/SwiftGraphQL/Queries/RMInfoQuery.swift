//
//  RMInfoQuery.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 27/10/23.
//

import Foundation
import SwiftGraphQL

extension RMInfo {
    static let selection = Selection.Info<RMInfo> {
        let count = try $0.count()
        return RMInfo(id: "", count: count ?? 0)
    }
}
