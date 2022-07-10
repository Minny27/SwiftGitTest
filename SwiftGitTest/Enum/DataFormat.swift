//
//  DataFormat.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2022/01/17.
//

import Foundation

enum DateFormat {
    case date
    case time
    
    var type: String {
        switch self {
        case .date:
            return "MM-dd"
        case .time:
            return "HH-mm"
        }
    }
}
