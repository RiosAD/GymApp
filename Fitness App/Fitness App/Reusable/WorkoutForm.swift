//
//  WorkoutForm.swift
//  Fitness App
//
//  Created by Angel Rios on 9/13/24.
//

import SwiftUI

struct WorkoutForm: ViewModifier {
    func body(content: Content) -> some View {
        content
            .keyboardType(.numberPad)
            .multilineTextAlignment(.center)
            .font(.system(size: 30))
            .padding(5)
            .foregroundStyle(Color(.lightWhite))
            .fontWeight(.semibold)
            .background(Color(.lightGreen).opacity(0.1))
            .clipShape(RoundedRectangle(cornerRadius: 5))
    }
    
}
