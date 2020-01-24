//
//  DetailViewController.swift
//  UISplitViewControllerExample
//
//  Created by Seokho on 2020/01/24.
//  Copyright © 2020 Seokho. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var data: String?
    weak var label: UILabel?
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .systemBackground
        self.view = view
        
        let label = UILabel()
        self.label = label
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    override func viewDidLoad() {
        self.navigationItem.leftItemsSupplementBackButton = true
        self.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
        self.label?.text = self.data
    }
}
