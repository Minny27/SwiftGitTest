//
//  ThirdViewController.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/12/19.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("버튼", for: .normal)
        button.addTarget(self,
                         action: #selector(tapButton),
                         for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    
    @objc private func tapButton() {
        let nc = UINavigationController(rootViewController: SecondViewController())
        
//        self.navigationController.root
    }
}
