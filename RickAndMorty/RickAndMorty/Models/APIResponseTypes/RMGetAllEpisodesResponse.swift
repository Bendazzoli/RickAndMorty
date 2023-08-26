//
//  RMGetAllEpisodesResponse.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 26/08/23.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable {
    let info: RMInfo
    let results: [RMEpisode]
}
