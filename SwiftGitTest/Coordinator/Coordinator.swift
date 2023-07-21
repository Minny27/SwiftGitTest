//
//  CoordinatorViewController.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/12/19.
//

import UIKit

class Coordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let rootViewController = ViewController()
        let navigationRootViewController = UINavigationController(rootViewController: rootViewController)
        window.rootViewController = navigationRootViewController
        window.makeKeyAndVisible()
    }
}
