//
//  RMInfo.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 26/08/23.
//

import Foundation

struct RMInfo: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}
