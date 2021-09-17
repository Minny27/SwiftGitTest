//
//  StudentTableViewCell.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/09/17.
//

import UIKit

final class StudentTableView: UITableViewCell {
    @IBOutlet weak var studentNameLabel: UILabel!
    @IBOutlet weak var studentAgeLabel: UILabel!
    
    func updateStudentInfo(studentInfo: Student) {
        studentNameLabel.text = studentInfo.name
        studentAgeLabel.text = studentInfo.age
    }
}
