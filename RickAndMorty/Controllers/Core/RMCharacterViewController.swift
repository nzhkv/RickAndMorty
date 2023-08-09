//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 08.08.2023.
//

import UIKit

/// controller to show and search for Characters
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let request = RMRequest(endpoint: .character, querryParametrs: [
        URLQueryItem(name: "name", value: "rick"),
        URLQueryItem(name: "status", value: "alive")
        ])
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            
        }
    }

}
