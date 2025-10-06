//
//  SignUpData.swift
//  Fitness App
//
//  Created by Angel Rios on 5/13/25.
//

import Foundation

@Observable
class UserData: Identifiable, Codable {
    
    enum CodingKeys: CodingKey {
        case email, password, firstName, lastName, DOB, feet, inches, weight
    }
    
     var id = UUID().uuidString
     var email: String
     var password: String
     var firstName: String
     var lastName: String
     var DOB: Date
     var feet: String
     var inches: String
     var weight: String
    
    func resetUserData () {
        id = UUID().uuidString
        email = ""
        password = ""
        firstName = " "
        lastName = " "
        DOB = Date()
        feet = "0"
        inches = "0"
        weight = "0"
    }
    
    init() {
        self.email = ""
        self.password = ""
        self.firstName = ""
        self.lastName = ""
        self.DOB = Date()
        self.feet = ""
        self.inches = ""
        self.weight = ""
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(email, forKey: .email)
        try container.encode(password, forKey: .password)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(DOB, forKey: .DOB)
        try container.encode(feet, forKey: .feet)
        try container.encode(inches, forKey: .inches)
        try container.encode(weight, forKey: .weight)
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.email = try container.decode(String.self, forKey: .email)
        self.password = try container.decode(String.self, forKey: .password)
        self.firstName = try container.decode(String.self, forKey: .firstName)
        self.lastName = try container.decode(String.self, forKey: .lastName)
        self.DOB = try container.decode(Date.self, forKey: .DOB)
        self.feet = try container.decode(String.self, forKey: .feet)
        self.inches = try container.decode(String.self, forKey: .inches)
        self.weight = try container.decode(String.self, forKey: .weight)
    }
}
