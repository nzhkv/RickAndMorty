//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 09.08.2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}
