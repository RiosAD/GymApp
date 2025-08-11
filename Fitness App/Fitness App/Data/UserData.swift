//
//  SignUpData.swift
//  Fitness App
//
//  Created by Angel Rios on 5/13/25.
//

import Foundation

@Observable
class UserData: Identifiable, Codable {
    
     var id: String = UUID().uuidString
     var email: String = ""
     var password: String = ""
     var firstName: String = ""
     var lastName: String = ""
     var DOB: Date = Date()
     var feet: String = ""
     var inches: String = ""
     var weight: String = ""
    
    func resetUserData () {
        id = UUID().uuidString
        email = ""
        password = ""
        firstName = " "
        lastName = " "
        DOB = Date()
        feet = "0"
        inches = "0"
        weight = "0"    }
}
