//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 09.08.2023.
//

import Foundation

/// represent unique API endpoint
@frozen enum RMEndpoint: String {
    case character
    case location
    case episode
}
