//
//  ViewController.swift
//  MVVMCPattern
//
//  Created by Victor Bruce on 27/11/2022.
//

import UIKit

class TodoController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        let todoUIView = TodoUIView(frame:CGRect(
            x: 0, y: 0,
            width: view.bounds.width,
            height: view.bounds.height
        ))
        
        setupNavbar()
        view.addSubview(todoUIView)
    }
    
    func setupNavbar() {
        navigationItem.title = "MVVMC Pattern"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
}
