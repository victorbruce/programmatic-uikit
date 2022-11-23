//
//  ViewController.swift
//  TabBarAndNavigationController
//
//  Created by Victor Bruce on 23/11/2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .systemBrown
        
        let homeVC = HomeViewController()
        let homeNavigation = UINavigationController(rootViewController: homeVC)
        homeNavigation.tabBarItem.image = UIImage(systemName: "house")
        homeNavigation.tabBarItem.title  = "Home"
        homeNavigation.navigationBar.prefersLargeTitles = true
        
        let searchVC = SearchViewController()
        let searchNavigation = UINavigationController(rootViewController: searchVC)
        searchNavigation.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        searchNavigation.tabBarItem.title = "Search"
        searchNavigation.navigationBar.prefersLargeTitles = true
        
        tabBar.tintColor = .label
        setViewControllers([homeNavigation, searchNavigation], animated: true)
    }
}

