//
//  InputView.swift
//  Fitness App
//
//  Created by Angel Rios on 4/26/24.
//

import SwiftUI

struct Input: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .background(Color(.systemGray3))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .padding(.horizontal, 35)
    }
    
}
