//
//  RMFooterLoadingCollectionReusableView.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 12.08.2023.
//

import UIKit

final class RMFooterLoadingCollectionReusableView: UICollectionReusableView {
       static let identifier = "RMFooterLoadingCollectionReusableView"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("unsuported")
    }
    
    private func addConstraints() {
        
    }
}
