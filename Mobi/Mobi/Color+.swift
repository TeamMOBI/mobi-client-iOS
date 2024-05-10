//
//  Font+.swift
//  Mobi
//
//  Created by 김인영 on 5/9/24.
//

import UIKit

enum Color: String {
    case gray0
    case gray50
    case gray100
    case gray200
    case gray300
    case gray400
    case gray500
    case gray600
    case gray700
    case gray750
    case gray800
    case gray900
}

public extension UIColor {
    @nonobjc static var mobi_gray0      = UIColor(color: .gray0)
    @nonobjc static var mobi_gray50     = UIColor(color: .gray50)
    @nonobjc static var mobi_gray100    = UIColor(color: .gray100)
    @nonobjc static var mobi_gray200    = UIColor(color: .gray200)
    @nonobjc static var mobi_gray300    = UIColor(color: .gray300)
    @nonobjc static var mobi_gray400    = UIColor(color: .gray400)
    @nonobjc static var mobi_gray500    = UIColor(color: .gray500)
    @nonobjc static var mobi_gray600    = UIColor(color: .gray600)
    @nonobjc static var mobi_gray700    = UIColor(color: .gray700)
    @nonobjc static var mobi_gray750    = UIColor(color: .gray750)
    @nonobjc static var mobi_gray800    = UIColor(color: .gray800)
    @nonobjc static var mobi_gray900    = UIColor(color: .gray900)
}


extension UIColor {
    
    convenience init(color: Color) {
        self.init(named: color.rawValue, in: Bundle.main, compatibleWith: nil)!
    }
}
