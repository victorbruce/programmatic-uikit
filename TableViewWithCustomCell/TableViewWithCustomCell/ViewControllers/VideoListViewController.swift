//
//  ViewController.swift
//  TableViewWithCustomCell
//
//  Created by Victor Bruce on 24/11/2022.
//

import UIKit

class VideoListViewController: UIViewController {
    private let tableView: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        table.backgroundColor = .clear
        table.rowHeight = 100
        table.separatorStyle = .none
        table.register(VideoCell.self, forCellReuseIdentifier: VideoCell.cellId)
        return table
    }()
    
    private lazy var videoList = Videos()
    
    override func loadView() {
        super.loadView()
        setup()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

private extension VideoListViewController {
    func setup() {
        navigationController?.navigationBar.topItem?.title = "My Videos"
        view.backgroundColor = .white
        
        // add subview
        view.addSubview(tableView)
        
        tableView.dataSource = self
       
        // add constraints
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}

extension VideoListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videoList.videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = videoList.videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: VideoCell.cellId, for: indexPath) as! VideoCell
        
        cell.configure(with: video)
        return cell
    }
}
