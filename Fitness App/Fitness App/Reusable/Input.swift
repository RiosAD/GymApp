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
            .font(.system(size: 25))
            .fontWeight(.semibold)
            .padding(15)
            .foregroundStyle(Color(.lightWhite))
            .background(Color(.darkGreen))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .fontWeight(.semibold)
            .autocorrectionDisabled(true)
            .textInputAutocapitalization(.none)
    }
    
}
