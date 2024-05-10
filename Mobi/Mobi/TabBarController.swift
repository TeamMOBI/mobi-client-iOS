//
//  TabBarController.swift
//  Mobi
//
//  Created by 김인영 on 5/9/24.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
        setTabBar()
    }
    
    // MARK: - Custom Methods
    
    private func setViewControllers() {

        let homeVC = makeNavigationController(
            unselectedImage: UIImage.TabBar.home,
            selectedImage: UIImage.TabBar.home,
            rootViewController: HomeViewController(), title: "홈")
        
        let searchVC = makeNavigationController(
            unselectedImage: UIImage.TabBar.search,
            selectedImage: UIImage.TabBar.search,
            rootViewController: SearchViewController(), title: "검색")
        
        let mypageVC = makeNavigationController(
            unselectedImage: UIImage.TabBar.mypage,
            selectedImage: UIImage.TabBar.mypage,
            rootViewController: MyPageViewController(), title: "마이")
        
        viewControllers = [homeVC, searchVC, mypageVC]
    }
    
    private func setTabBar() {
        tabBar.backgroundColor = .gray05
        tabBar.tintColor = .gray01
        tabBar.unselectedItemTintColor = .gray03
        
        self.delegate = self
    }
    
    private func makeNavigationController(unselectedImage: UIImage?, selectedImage: UIImage?, rootViewController: UIViewController, title: String) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.tabBarItem.title = title
        
        nav.navigationBar.tintColor = .gray01
        nav.navigationBar.backgroundColor = .gray05
        nav.isNavigationBarHidden = true
        nav.navigationBar.isHidden = true
        nav.tabBarItem.setTitleTextAttributes([.font: UIFont.font(.semibold, ofSize: 11)], for: .normal)
        nav.navigationItem.backBarButtonItem = UIBarButtonItem(title: nil, style: .plain, target: self, action: nil)
        nav.navigationItem.backBarButtonItem?.tintColor = .black
        
        nav.interactivePopGestureRecognizer?.isEnabled = true
        nav.interactivePopGestureRecognizer?.delegate = self
        
        return nav
    }
}

extension TabBarController: UIGestureRecognizerDelegate { }
