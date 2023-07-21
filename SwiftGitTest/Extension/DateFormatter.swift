//
//  DataFormatter.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2022/01/17.
//

import Foundation

extension DateFormatter {
    func dateToString(date: Date, dateFormat: DateFormat) -> String {
        self.locale = Locale(identifier: "ko_KR")
        self.dateFormat = dateFormat.type
        
        return self.string(from: date)
    }
}


