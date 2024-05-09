//
//  UIFont+.swift
//  Mobi
//
//  Created by 김인영 on 5/9/24.
//

import UIKit

extension UIFont {
    
    @nonobjc class var light: UIFont {
        return UIFont.font(.light, ofSize: 16)
    }
    
    @nonobjc class var regular: UIFont {
        return UIFont.font(.regular, ofSize: 18)
    }
    
    @nonobjc class var medium: UIFont {
        return UIFont.font(.medium, ofSize: 14)
    }
    
    @nonobjc class var semibold: UIFont {
        return UIFont.font(.semibold, ofSize: 14)
    }
    
    @nonobjc class var bold: UIFont {
        return UIFont.font(.bold, ofSize: 11)
    }
}

enum FontName: String {
    case light = "Pretendard-Light"
    case regular = "Pretendard-Regular"
    case medium = "Pretendard-Medium"
    case semibold = "Pretendard-SemiBold"
    case bold = "Pretendard-Bold"
}

extension UIFont {
    static func font(_ style: FontName, ofSize size: CGFloat) -> UIFont {
        return UIFont(name: style.rawValue, size: size)!
    }
}
