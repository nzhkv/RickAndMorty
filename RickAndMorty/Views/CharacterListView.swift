//
//  CharacterListView.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 10.08.2023.
//

import UIKit

/// view that handles showing list of characters, loader, etc.
final class CharacterListView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .systemBlue
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
}
