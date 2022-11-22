//
//  ViewController.swift
//  TabBarControllers
//
//  Created by Victor Bruce on 22/11/2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        let homeVC = HomeViewController()
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.title = "Home"
        
        let searchVC = SearchViewController()
        searchVC.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        searchVC.title = "Search"
        
        let settingsVC = SettingsViewController()
        settingsVC.tabBarItem.image = UIImage(systemName: "gear")
        settingsVC.title = "Settings"
        
        tabBar.tintColor = .label
        setViewControllers([homeVC, searchVC, settingsVC], animated: true)
    }


}

