//
//  ViewController.swift
//  NavigationControllers
//
//  Created by Victor Bruce on 22/11/2022.
//

import UIKit

class ViewController: UIViewController {
    private let settingsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Go to Settings", for: .normal)
        button.titleColor(for: .normal)
        button.configuration = .filled()
        button.tintColor = .systemPink
        button.layer.borderColor = UIColor.clear.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(handleNavigation), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button;
    }()
    
    private func settingsButtonConstriants() {
        NSLayoutConstraint.activate([
            settingsButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90),
            settingsButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            settingsButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            settingsButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    @objc private func handleNavigation() {
        navigationController?.pushViewController(SettingsViewController(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationItem.title = "Home"
        
        view.addSubview(settingsButton)
        settingsButtonConstriants()
    }
}

