//
//  User.swift
//  TodoList
//
//  Created by Pavan Sarvaiya on 25/09/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
