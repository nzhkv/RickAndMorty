//
//  characterListViewViewModel.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 10.08.2023.
//

import Foundation

struct CharacterListViewViewModel {
    
    func fetchCharacters() {
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: " + String(model.info.count))
                print("Page result count: " + String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
