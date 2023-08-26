//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Paulo Henrique Bendazzoli on 22/08/23.
//

import Foundation

/// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
enum RMCharacterGender: String, Codable {
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown"
}
