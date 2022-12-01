//
//  ViewController.swift
//  SwipeActionsOnTableRow
//
//  Created by Victor Bruce on 30/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var todos = [
        "Data Structures & Algorithm",
        "Learn Core Data - iOS Development",
        "Push code changes to Github",
        "Design landing page interface in Figma"
    ]
    
    var count = 4
    
    private let timelineTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellId")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        view.addSubview(timelineTableView)
        navigationItem.title = "Todos"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        timelineTableView.delegate = self
        timelineTableView.dataSource = self
    }

    override func viewDidLayoutSubviews() {
        timelineTableView.frame = view.frame
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let todo = todos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = todo
        return cell
    }
    
    // define a UIContextualAction for an edit Action
    private func editTodo(at indexPath: IndexPath) -> UIContextualAction{
        let editAction = UIContextualAction(style: .normal, title: "Edit") { [weak self] (_, _, _) in
            guard let self = self else {return}
            let alert = UIAlertController(title: "Want to Edit?", message: "Click on the button below to make changes", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Yes", style: .default))
            
            self.present(alert, animated: true)
        }
        
        return editAction
    }
    
    // define a UIContextualAction for a delete Action
    private func deleteTodo(at indexPath: IndexPath) -> UIContextualAction {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { [weak self] (_, _, _) in
            guard let self = self else {return}
            
            self.count -= 1
            self.timelineTableView.deleteRows(at: [indexPath], with: .automatic)
            self.timelineTableView.reloadData()
        }
        
        return deleteAction
    }
    
    // this is where we add the swipe buttons to each table
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let edit = editTodo(at: indexPath)
        let delete = deleteTodo(at: indexPath)
        
        let swipe = UISwipeActionsConfiguration(actions: [delete, edit])
        return swipe
    }
}

