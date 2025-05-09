//
//  User.swift
//  Fitness App
//
//  Created by Angel Rios on 9/4/24.
//

import Foundation
import SwiftData

@Transient
class User: Identifiable {
    var id: String
    var email: String
    var firstName: String
    var lastName: String
    var DOB: Date
    var feet: Int
    var inches: Int
    var weight: Int
    
    
    init(email: String, firstName: String, lastName: String, DOB: Date, feet: Int, inches: Int, weight: Int) {
        self.id = UUID().uuidString
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.DOB = DOB
        self.feet = feet
        self.inches = inches
        self.weight = weight
    }
    
//    var height: String {
//       return "\(feet)\("'")\(inches)"
//    }
//    
//    var fullname: String {
//       return "\(firstName) \(lastName)"
//    }
    
    
}

//extension User {
//    static var testUser = User(email: "arios_21@outlook.com", firstName: "Daniel", lastName: "Nava", DOB: Date(), feet: 5, inches: 8, weight: 195)
//}
