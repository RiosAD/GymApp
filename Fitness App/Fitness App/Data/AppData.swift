//
//  AppData.swift
//  Fitness App
//
//  Created by Angel Rios on 9/24/24.
//

import Foundation
import SwiftData

@Model
class Exercises: Identifiable {
    
    var id: String
    var exerciseName: String
    var rep: String
    var sets: String
    var exceWeight: String
    var date: Date
    var catSel: String
    
    init(exerciseName: String, rep: String, sets: String, exceWeight: String, date: Date, catSel: String){
        
        self.id = UUID().uuidString
        self.exerciseName = exerciseName
        self.rep = rep
        self.sets = sets
        self.exceWeight = exceWeight
        self.date = date
        self.catSel = catSel
    }
    
    
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
    }
    
}
