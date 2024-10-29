//
//  PreviewSampleData.swift
//  Fitness App
//
//  Created by Angel Rios on 10/28/24.
//

import SwiftUI
import SwiftData

struct PreviewSampleData {
    let container: ModelContainer
    init() {
        let config = ModelConfiguration(isStoredInMemoryOnly: true)
        do {
            container = try ModelContainer(for: Exercises.self, configurations: config)
        } catch {
            fatalError("Failed to create container. Error \(error.localizedDescription)")
        }
    }
    
    func addSample(_ previewData: [Exercises]) {
        Task { @MainActor in
            previewData.forEach { preview in
                container.mainContext.insert(preview)
            }
        }
    }
}
