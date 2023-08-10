//
//  Extentions.swift
//  RickAndMorty
//
//  Created by Nikolay Zhukov on 10.08.2023.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
