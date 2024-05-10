//
//  UIImage+.swift
//  Mobi
//
//  Created by 김인영 on 5/9/24.
//

import UIKit

public extension UIImage {
    enum TabBar {
        public static let home              = UIImage(name: "tabbar_home")
        public static let search            = UIImage(name: "tabbar_search")
        public static let mypage            = UIImage(name: "tabbar_mypage")
    }
    
    enum Icn {
        public static let location = UIImage(name: "location")
    }
    
    enum Img {
        public static let mobi_logo = UIImage(name: "mobi_logo")
        public static let canvas_money_complete_lv3 = UIImage(name:"road_background_lv3")
    }
    
    enum Btn {
        public static let close     = UIImage(name: "btn_close")
        public static let back      = UIImage(name: "btn_back")
        public static let floating  = UIImage(name: "btn_floating")
        public static let btn_plus  = UIImage(name: "btn_plus")
        public static let more  = UIImage(name: "btn_more")
        public static let plus  = UIImage(name: "btn_plus")
        public static let setting  = UIImage(name: "btn_setting")
    }
}

extension UIImage {
    convenience init?(name: String) {
        self.init(named: name, in: Bundle.main, with: nil)
    }
}

extension UIImage {
   public func resizing(width: CGFloat, height: CGFloat) -> UIImage {
       let size = CGSize(width: width, height: height)
       let render = UIGraphicsImageRenderer(size: size)
       let renderImage = render.image { context in
           self.draw(in: CGRect(origin: .zero, size: size))
       }
       return renderImage
   }
    
    public func resizeWithWidth(width: CGFloat) -> UIImage? {
         let imageView = UIImageView(frame: CGRect(origin: .zero, size: CGSize(width: width, height: CGFloat(ceil(width/size.width * size.height)))))
         imageView.contentMode = .scaleAspectFit
         imageView.image = self
         UIGraphicsBeginImageContextWithOptions(imageView.bounds.size, false, scale)
         guard let context = UIGraphicsGetCurrentContext() else { return nil }
         imageView.layer.render(in: context)
         guard let result = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
         UIGraphicsEndImageContext()
         return result
     }
}