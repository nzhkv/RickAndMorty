//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 10.08.2023.
//

import Foundation

struct RMGetAllCharactersResponse: Codable {
    struct info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: info
    let results: [RMCharacter]
}
