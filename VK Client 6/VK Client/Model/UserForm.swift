//
//  UserForm.swift
//  VK Client
//
//  Created by Regina Galishanova on 30.12.2020.
//

import Foundation

struct Friend {
    var name: String
    var image: String
    var allImages = [String]()
}

extension Friend: Equatable {
    static func == (lhs: Friend, rhs: Friend) -> Bool {
        return lhs.name == rhs.name
    }
}

let friend = Friend (name: "", image: "", allImages: [""])
