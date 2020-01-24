//
//  SceneDelegate.swift
//  UISplitViewControllerExample
//
//  Created by Seokho on 2020/01/24.
//  Copyright © 2020 Seokho. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        self.window = window
        let splitViewController = UISplitViewController()
        
        let mainViewController = ViewController()
        let mainNavigationViewController = UINavigationController(rootViewController: ViewController())
        
        let detailViewController = DetailViewController()
        detailViewController.data = mainViewController.data.sorted().first
        let datailNavigationController = UINavigationController(rootViewController: detailViewController)
        splitViewController.viewControllers = [mainNavigationViewController, datailNavigationController]
        self.window?.rootViewController = splitViewController
        self.window?.makeKeyAndVisible()
    }
}
