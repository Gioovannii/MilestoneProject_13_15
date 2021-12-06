//
//  User.swift
//  MilestoneProject_13_15
//
//  Created by Giovanni Gaffé on 2021/12/6.
//

import Foundation

struct User {
    let id = UUID()
    let name: String
    let image: String
}

extension User {
    static var dumbUsers = [User(name: "John", image: "image 1"),
                            User(name: "Paul", image: "image 2"),
                            User(name: "Michael", image: "image 3")]
}
