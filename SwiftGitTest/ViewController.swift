//
//  ViewController.swift
//  SwiftGitTest
//
//  Created by SeungMin on 2021/09/15.
//

import UIKit

class Person {
    var name: String
    weak var pet: Pet?

    init(name: String) {
        self.name = name
        print("\(name) is being initialized.")
    }

    deinit {
        print("\(name) is being deallocated.")
    }
}

class Pet {
    var name: String
    var owner: Person?

    init(name: String) {
        self.name = name
        print("\(name) is being initialized.")
    }

    deinit {
        print("\(name) is being deallocated.")
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRetainCycle()
    }
    
    func createRetainCycle() {
        var john: Person? = Person(name: "John")
        var dog: Pet? = Pet(name: "Buddy")

        john?.pet = dog
        dog?.owner = john

        john = nil
        dog = nil
    }
}
