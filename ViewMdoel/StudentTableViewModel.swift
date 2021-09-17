//
//  StudentTableViewMoel.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/09/17.
//

import Foundation

final class StudentViewModel {
    let studentList: [Student] = [
        Student(name: "김승민", age: "15"),
        Student(name: "이승민", age: "17")
    ]
    
    var countStudentList: Int {
        return studentList.count
    }
    
    func studentInfo(at index: Int) -> Student {
        return studentList[index]
    }
}
