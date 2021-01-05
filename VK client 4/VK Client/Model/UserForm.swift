//
//  UserForm.swift
//  VK Client
//
//  Created by Regina Galishanova on 30.12.2020.
//

import Foundation


enum Gender {
    case male, female, notSpecified
}

struct Friend {
    var name: String
//    var lastName: String
//    var gender: Gender
//    var birthday: Any
//    var city: String
//    var status: String
//    var maritalStatus: String
//    var education: String
    var id: String
    var image: String
}

let friend = Friend (name: "", id: "", image: "")
