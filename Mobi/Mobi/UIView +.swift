//
//  UIView +.swift
//  Mobi
//
//  Created by 김인영 on 5/10/24.
//


import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { self.addSubview($0) }
    }
}
