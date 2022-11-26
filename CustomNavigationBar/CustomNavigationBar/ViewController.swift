//
//  ViewController.swift
//  CustomNavigationBar
//
//  Created by Victor Bruce on 26/11/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        // setting a custom background and foregrond color for the navigation bar
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemRed
        appearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationItem.standardAppearance = appearance
        self.navigationItem.scrollEdgeAppearance = appearance
        
        navigationItem.title = "Home"
        navigationController?.navigationBar.prefersLargeTitles = true
    }


}

