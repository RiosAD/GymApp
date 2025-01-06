//
//  User.swift
//  Fitness App
//
//  Created by Angel Rios on 9/4/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let firstName: String
    let lastName: String
    let age: Int
    let feet: Int
    let inches: Int
    let weight: Int
    
    var height: String {
       return "\(feet)\("'")\(inches)"
    }
    
    var fullname: String {
       return "\(firstName) \(lastName)"
    }
    
}

extension User {
    static var testUser = User(id: NSUUID().uuidString, firstName: "Daniel", lastName: "Nava", age: 26, feet: 5, inches: 8, weight: 195)
}
