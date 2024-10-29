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
        case arms = "Arms"
        case back = "Back"
        case chest = "Chest"
        case legs = "Legs"
    }
}

