//
//  PreviewExerciseData.swift
//  Fitness App
//
//  Created by Angel Rios on 10/28/24.
//

import SwiftUI

extension Exercises {
    static var previewData: [Exercises] {
        [
            Exercises(exerciseName: "Lat Pulldown", rep: "10", sets: "3", exceWeight: "55", date: Date(), catSel: ExercisesCategory.Cat.back.rawValue),
            
            Exercises(exerciseName: "Flat Dumbbell Bench", rep: "10", sets: "3", exceWeight: "60", date: Date(), catSel: ExercisesCategory.Cat.chest.rawValue),
            
            Exercises(exerciseName: "Cable Hammer Curls", rep: "10", sets: "3", exceWeight: "80", date: Date(), catSel: ExercisesCategory.Cat.arms.rawValue),
            
            Exercises(exerciseName: "Leg Press", rep: "10", sets: "3", exceWeight: "320", date: Date(), catSel: ExercisesCategory.Cat.legs.rawValue),
            
            Exercises(exerciseName: "Cable Row", rep: "10", sets: "3", exceWeight: "35", date: Date(), catSel: ExercisesCategory.Cat.back.rawValue),
            
            Exercises(exerciseName: "Incline Dumbbell Bench", rep: "10", sets: "3", exceWeight: "60", date: Date(), catSel: ExercisesCategory.Cat.chest.rawValue),
            
            Exercises(exerciseName: "Cable Curls", rep: "10", sets: "3", exceWeight: "80", date: Date(), catSel: ExercisesCategory.Cat.arms.rawValue),
            
            Exercises(exerciseName: "Squat", rep: "10", sets: "3", exceWeight: "320", date: Date(), catSel: ExercisesCategory.Cat.legs.rawValue),
            
            Exercises(exerciseName: "Cable Back Workout", rep: "10", sets: "3", exceWeight: "100", date: Date(), catSel: ExercisesCategory.Cat.back.rawValue),
            
            Exercises(exerciseName: "High to Low Cable Fly", rep: "10", sets: "3", exceWeight: "60", date: Date(), catSel: ExercisesCategory.Cat.chest.rawValue),
            
            Exercises(exerciseName: "Reverse Grip Curl", rep: "10", sets: "3", exceWeight: "40", date: Date(), catSel: ExercisesCategory.Cat.arms.rawValue),
            
            Exercises(exerciseName: "Leg Extension", rep: "10", sets: "3", exceWeight: "90", date: Date(), catSel: ExercisesCategory.Cat.legs.rawValue),
            
            Exercises(exerciseName: "Leg Curl", rep: "10", sets: "3", exceWeight: "100", date: Date(), catSel: ExercisesCategory.Cat.legs.rawValue)
        ]
    }
}
