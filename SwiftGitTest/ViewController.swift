//
//  ViewController.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/09/15.
//

import UIKit

class ViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "첫 번째 화면"
        label.font = .boldSystemFont(ofSize: 20)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let searchBar: UISearchBar = {
        let sb = UISearchBar()
        sb.translatesAutoresizingMaskIntoConstraints = false
        return sb
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
        view.addSubview(searchBar)
        searchBar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        searchBar.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(titleLabel)
        titleLabel.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 50).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        view.addSubview(button)
        button.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 50).isActive = true
        button.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        button.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func clickButton() {
        let secondViewController = SecondViewController()
        secondViewController.delegate = self
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}

extension ViewController: SendingColorDelegate {
    func sendingColor(color: UIColor) {
        view.backgroundColor = color
    }
}
