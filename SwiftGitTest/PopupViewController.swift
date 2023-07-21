//
//  PopupViewController.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2023/07/19.
//

import UIKit

protocol WillDelegate: AnyObject {
    func sendMessage(text: String)
}

final class PopupViewController: UIViewController {
    
    weak var willDelegate: WillDelegate? = nil
    
    let popupView: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let popupStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 32
        sv.alignment = .center
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "타이틀"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let buttonStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.spacing = 16
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    let settingButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("설정", for: .normal)
        bt.backgroundColor = .blue
//        bt.layer.borderWidth = 2
//        bt.layer.cornerRadius = 10
//        bt.layer.borderColor = UIColor.white.cgColor
        bt.addTarget(self,
                     action: #selector(tappedButton(_:)),
                     for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    let dismissButton: UIButton = {
        let bt = UIButton()
        bt.setTitle("닫기", for: .normal)
        bt.backgroundColor = .blue
//        bt.layer.borderWidth = 2
//        bt.layer.cornerRadius = 10
//        bt.layer.borderColor = UIColor.white.cgColor
        bt.addTarget(self,
                     action: #selector(tappedButton(_:)),
                     for: .touchUpInside)
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black.withAlphaComponent(0.3)
        
        setupUI()
    }
    
    private func setupUI() {
        view.addSubview(popupView)
        NSLayoutConstraint.activate([
            popupView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            popupView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            popupView.widthAnchor.constraint(equalToConstant: 150),
            popupView.heightAnchor.constraint(equalToConstant: 120)
        ])
        
        popupView.addSubview(popupStackView)
        NSLayoutConstraint.activate([
            popupStackView.topAnchor.constraint(equalTo: popupView.topAnchor, constant: 16),
            popupStackView.leftAnchor.constraint(equalTo: popupView.leftAnchor, constant: 16),
            popupStackView.rightAnchor.constraint(equalTo: popupView.rightAnchor, constant: -16),
        ])
        
        popupStackView.addArrangedSubview(titleLabel)
        popupStackView.addArrangedSubview(buttonStackView)
        
        buttonStackView.addArrangedSubview(settingButton)
        buttonStackView.addArrangedSubview(dismissButton)
    }
    
    @objc private func tappedButton(_ sender: UIButton) {
        print("sender.titleLabel?.text - \(sender.titleLabel?.text)")
        willDelegate?.sendMessage(text: sender.titleLabel?.text ?? "")
    }
}
