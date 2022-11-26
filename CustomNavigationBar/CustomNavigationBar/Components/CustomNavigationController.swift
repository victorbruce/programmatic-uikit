//
//  CustomNavigationController.swift
//  CustomNavigationBar
//
//  Created by Victor Bruce on 26/11/2022.
//

import UIKit

// a fix to change the status bar text from black to white
class CustomNavigationBarController: UINavigationController {
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
