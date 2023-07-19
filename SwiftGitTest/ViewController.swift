//
//  ViewController.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/09/15.
//

import UIKit

@objc protocol WillDelegate {
    @objc optional var name: String { set get }
    @objc func tapButton(_ sender: UIButton)
    
}

class ViewController: UIViewController, WillDelegate {
    let button: UIButton = {
        let bt = UIButton()
        bt.setTitle("버튼", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.backgroundColor = .orange
        bt.addTarget(self,
                     action: #selector(tapButton(_:)),
                     for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    @objc func tapButton(_ sender: UIButton) {
        print("Button tapped!")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
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
}
