//
//  Field.swift
//  Fitness App
//
//  Created by Angel Rios on 6/24/24.
//

import SwiftUI

struct DetailsField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .keyboardType(.numberPad)
            .multilineTextAlignment(.center)
            .font(.system(size: 45))
            .padding(10)
            .foregroundStyle(Color(.lightWhite))
            .fontWeight(.semibold)
            .background(Color(.darkGreen))
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
    
}
