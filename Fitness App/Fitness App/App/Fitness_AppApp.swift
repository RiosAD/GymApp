//
//  Fitness_AppApp.swift
//  Fitness App
//
//  Created by Angel Rios on 3/23/24.
//

import SwiftUI
import SwiftData

@main
struct Fitness_AppApp: App {
    @StateObject var viewModel = AuthModel()
    
    var body: some Scene {
        WindowGroup {
            StartUp()
                .environmentObject(viewModel)
        }
        .modelContainer(for: Exercises.self)
    }
}
