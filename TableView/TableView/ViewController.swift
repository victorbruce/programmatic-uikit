//
//  ViewController.swift
//  TableView
//
//  Created by Victor Bruce on 23/11/2022.
//

import UIKit

class ViewController: UIViewController {
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // give tableView a frame
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        tableView.backgroundColor = .systemBrown
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    // number of rows to render
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    // dequeue a reusable cell and return to tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Count \(indexPath.row + 1)"
        cell.backgroundColor = .systemBrown
        return cell
    }
    
    // deselect row when tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print("cell \(indexPath.row + 1) tapped!")
    }
    
    // customize row height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
