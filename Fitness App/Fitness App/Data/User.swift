//
//  User.swift
//  Fitness App
//
//  Created by Angel Rios on 9/4/24.
//

import Foundation
import SwiftData

struct User: Identifiable, Codable {
    let id: String
    let email: String
    let firstName: String
    let lastName: String
    let DOB: Date
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
    static var testUser = User(id: NSUUID().uuidString, email: "arios_21@outlook.com", firstName: "Daniel", lastName: "Nava", DOB: Date(), feet: 5, inches: 8, weight: 195)
}
