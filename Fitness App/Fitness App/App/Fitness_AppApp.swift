//
//  Fitness_AppApp.swift
//  Fitness App
//
//  Created by Angel Rios on 3/23/24.
//

import SwiftUI
import SwiftData
import Firebase

@main
struct Fitness_AppApp: App {
    @StateObject var viewModel = AuthModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            Root()
                .environmentObject(viewModel)
        }
        .modelContainer(for: Exercises.self)
    }
}
