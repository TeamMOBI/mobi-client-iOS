//
//  Font+.swift
//  Mobi
//
//  Created by 김인영 on 5/9/24.
//

import UIKit

enum Color: String {
    case gray01
    case gray02
    case gray03
    case gray04
    case gray05
    case yellow
}

public extension UIColor {
    @nonobjc static var mobi_gray01     = UIColor(color: .gray01)
    @nonobjc static var mobi_gray02     = UIColor(color: .gray02)
    @nonobjc static var mobi_gray03    = UIColor(color: .gray03)
    @nonobjc static var mobi_gray04    = UIColor(color: .gray04)
    @nonobjc static var mobi_gray05    = UIColor(color: .gray05)
    @nonobjc static var mobi_yellow    = UIColor(color: .yellow)
}


extension UIColor {
    
    convenience init(color: Color) {
        self.init(named: color.rawValue, in: Bundle.main, compatibleWith: nil)!
    }
}
