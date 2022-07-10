//
//  SecondViewController.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/12/09.
//

import UIKit

protocol SendingColorDelegate: AnyObject {
    func sendingColor(color: UIColor)
}

class SecondViewController: UIViewController {
    
    weak var delegate: SendingColorDelegate?
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "두 번째 화면"
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.setTitle(
            "버튼",
            for: .normal
        )
        button.addTarget(
            self,
            action: #selector(clickButton),
            for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(titleLabel)
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 50).isActive = true
        button.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func clickButton() {
        delegate?.sendingColor(color: .orange)
        navigationController?.popViewController(animated: true)
    }
}
