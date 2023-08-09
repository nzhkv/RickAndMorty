//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 08.08.2023.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingledLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}


