//
//  CommunitiesForm.swift
//  VK Client
//
//  Created by Regina Galishanova on 30.12.2020.
//

import Foundation

struct Community {
    var name: String
    var followersCount: String
    var image: String
//    var decription: String
//    var status: String
//    var links: Any
//    var contacts: Any
}

extension Community: Equatable {
    static func == (lhs: Community, rhs: Community) -> Bool {
        return lhs.name == rhs.name
    }
}

let community = Community(name: "", followersCount: "", image: "")
