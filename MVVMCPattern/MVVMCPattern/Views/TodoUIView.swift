//
//  TodoView.swift
//  MVVMCPattern
//
//  Created by Victor Bruce on 27/11/2022.
//

import UIKit

class TodoUIView: UIView {
    var labelText: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "No Todos ✍️"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.font = UIFont.systemFont(ofSize: 24)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(labelText)
        applyLabelTextConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func applyLabelTextConstraint() {
        NSLayoutConstraint.activate([
            labelText.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            labelText.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
    
}
