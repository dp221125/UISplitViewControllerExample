//
//  ViewController.swift
//  UISplitViewControllerExample
//
//  Created by Seokho on 2020/01/24.
//  Copyright © 2020 Seokho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var collapseDetailViewController: Bool = true
    
    var data: [String] = ["한국", "일본", "미국", "캐나다", "브라질", "중국" ,"영국", "독일", "베트남", "인도네시아", "인도" ]
    
    override func loadView() {
        let view = UITableView()
        view.backgroundColor = .systemBackground
        self.view = view
        view.register(UITableViewCell.self, forCellReuseIdentifier: "\(UITableViewCell.self)")
        view.dataSource = self
        view.delegate = self
        data.sort()
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(UITableViewCell.self)", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    } 
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailViewController = DetailViewController()
        let navigationCotroller = UINavigationController(rootViewController: detailViewController)
        detailViewController.data = self.data[indexPath.row]
        splitViewController?.showDetailViewController(navigationCotroller, sender: nil)
    }
}
