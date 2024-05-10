//
//  TabBarController.swift
//  Mobi
//
//  Created by 김인영 on 5/9/24.
//

import UIKit

class TabBarController: UITabBarController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
        setTabBar()
    }
    
    // MARK: - Custom Methods
    
    private func setViewControllers() {
        let viewControllers = TabBarItem.allCases
            .map { navigationController(with: $0, rootViewController: $0.rootViewController) }
        
        self.viewControllers = viewControllers
    }
    
    private func navigationController(
        with item: TabBarItem,
        rootViewController: UIViewController
    ) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        
        nav.tabBarItem.image = item.image
        nav.tabBarItem.title = item.title
        nav.tabBarItem.setTitleTextAttributes([.font: UIFont.font(.bold, ofSize: 14)], for: .normal)
        nav.tabBarItem.imageInsets = UIEdgeInsets(top: 3, left: 45, bottom: 3, right: 45)
        nav.navigationBar.backgroundColor = .clear
        nav.isNavigationBarHidden = true
        nav.navigationBar.isHidden = true
        nav.interactivePopGestureRecognizer?.isEnabled = true
        nav.interactivePopGestureRecognizer?.delegate = self
        
        return nav
    }
    
    private func setTabBar() {
        tabBar.backgroundColor = .mobi_gray05
        tabBar.tintColor = .mobi_gray01
        tabBar.unselectedItemTintColor = .mobi_gray03
        tabBar.layer.cornerRadius = 20
        tabBar.backgroundImage = UIImage()
    }
}

extension TabBarController: UIGestureRecognizerDelegate { }
