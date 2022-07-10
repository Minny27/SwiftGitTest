//
//  StudentTableViewCell.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/09/17.
//

import UIKit

final class StudentTableViewCell: UITableViewCell {
    static let identifier = "studentTableViewCell"
    
    let studentNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 12)
        label.textColor = .black
        
        return label
    }()
    
    let studentAgeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        
        return label
    }()
    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        self.separatorInset = UIEdgeInsets.zero
//    }
    
    func configureCell() {
        contentView.addSubview(studentNameLabel)
        contentView.addSubview(studentAgeLabel)
        
        studentNameLabel.translatesAutoresizingMaskIntoConstraints = false
        studentAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            studentNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            studentNameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            studentNameLabel.widthAnchor.constraint(equalToConstant: 80),
            studentNameLabel.heightAnchor.constraint(equalToConstant: 20),
            
            studentAgeLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            studentAgeLabel.leftAnchor.constraint(equalTo: studentNameLabel.rightAnchor, constant: 10),
            studentAgeLabel.widthAnchor.constraint(equalToConstant: 30),
            studentAgeLabel.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    func updateStudentInfo(studentInfo: Student) {
        studentNameLabel.text = studentInfo.name
        studentAgeLabel.text = studentInfo.age
    }
}
