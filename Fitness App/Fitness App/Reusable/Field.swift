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
            .font(.system(size: 35))
            .padding(10)
            .foregroundStyle(Color(.lightWhite))
            .background(Color(.darkGreen))
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .fontWeight(.semibold)
            .padding(.bottom, 10)
//        Divider()
//            .background(Color(.white))
    }
    
}
