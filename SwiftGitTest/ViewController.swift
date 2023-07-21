//
//  ViewController.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/09/15.
//

import UIKit

class ViewController: UIViewController {
    
    let button: UIButton = {
        let bt = UIButton()
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
//        setupDelegate()
    }
    
    private func setupUI() {
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
//    private func setupDelegate() {
//        popupVC.willDelegate = self
//    }
}

extension ViewController: WillDelegate {
    func sendMessage(text: String) {
        print(text)
        navigationController?.popViewController(animated: false)
    }
}
