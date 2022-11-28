//
//  TodoViewModel.swift
//  MVVMCPattern
//
//  Created by Victor Bruce on 27/11/2022.
//

import UIKit

struct TodoViewModel {
    private(set) var todos = [
        Todo(name: "Design a business web template"),
        Todo(name: "Add integration testing to codebase")
    ]
}
