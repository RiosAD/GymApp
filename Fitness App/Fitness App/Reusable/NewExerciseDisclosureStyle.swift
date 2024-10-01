//
//  NewExerciseDisclosureStyle.swift
//  Fitness App
//
//  Created by Angel Rios on 10/1/24.
//

import Foundation
import SwiftUI

struct NewExerciseDisclosureStyle: DisclosureGroupStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.label
                .foregroundStyle(Color(.clear))
            
           
            if configuration.isExpanded {
                configuration.content
                    .frame(maxHeight: 120)
            }
        }
    }
    
    
}
