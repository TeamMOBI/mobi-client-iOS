//
//  TabBarItem.swift
//  Mobi
//
//  Created by 김인영 on 5/10/24.
//

import UIKit

enum TabBarItem: CaseIterable {
    case home
    case search
    case mypage
    
    var title: String {
        switch self {
        case .home:         return "홈"
        case .search:    return "검색"
        case .mypage:       return "마이"
        }
    }
    
    var image: UIImage? {
        switch self {
        case .home:         return .Icn.home
        case .search:    return .Icn.search
        case .mypage:       return .Icn.mypage
        }
    }
    
    var rootViewController: UIViewController {
        switch self {
        case .home:         return HomeViewController()
        case .search:    return SearchViewController()
        case .mypage:       return MyPageViewController()
        }
    }
}
