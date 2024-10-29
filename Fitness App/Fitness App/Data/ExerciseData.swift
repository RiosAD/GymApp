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
}
