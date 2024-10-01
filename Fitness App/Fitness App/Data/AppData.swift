//
//  AppData.swift
//  Fitness App
//
//  Created by Angel Rios on 9/24/24.
//

import Foundation
import SwiftData

@Model
class AppData {
    
    var id: String
    var exerciseName: String
    var rep: String
    var sets: String
    var exceWeight: Int
    var date: Date
    
    init(exerciseName: String, rep: String, sets: String, exceWeight: Int, date: Date){
        
        self.id = UUID().uuidString
        self.exerciseName = exerciseName
        self.rep = rep
        self.sets = sets
        self.exceWeight = exceWeight
        self.date = date
    }
}
