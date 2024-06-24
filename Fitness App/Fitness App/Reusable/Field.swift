//
//  Field.swift
//  Fitness App
//
//  Created by Angel Rios on 6/24/24.
//

import SwiftUI

struct Field: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 30))
            .padding(10)
            .foregroundStyle(Color(.lightWhite))
            .fontWeight(.semibold)
        Divider()
            .background(Color(.white))
    }
    
}
