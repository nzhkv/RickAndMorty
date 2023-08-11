//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 11.08.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
