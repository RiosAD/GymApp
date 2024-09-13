//
//  DataExercises.swift
//  Fitness App
//
//  Created by Angel Rios on 7/24/24.
//

import SwiftUI

struct ExercisesCategory: Identifiable {
    private (set) var id: Cat
    
    enum Cat: String, CaseIterable {
        case legs = "Legs"
        case arms = "Arms"
        case chest = "Chest"
        case back = "Back"
    }
}

