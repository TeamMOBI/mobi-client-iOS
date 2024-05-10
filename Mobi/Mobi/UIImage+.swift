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
    }
    
    enum Test {
        public static let hongdae = UIImage(name: "hongdae")
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
