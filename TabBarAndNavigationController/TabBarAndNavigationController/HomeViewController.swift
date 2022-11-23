//
//  HomeViewController.swift
//  TabBarAndNavigationController
//
//  Created by Victor Bruce on 23/11/2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let settingsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to Settings", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleSettingsButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc func handleSettingsButton() {
        navigationController?.pushViewController(SettingsViewController(), animated: true)
    }

    private func setupLayout() {
        view.addSubview(settingsButton)
        NSLayoutConstraint.activate([
            settingsButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            settingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            settingsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            settingsButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Home"
        
        setupLayout()
    }
}
