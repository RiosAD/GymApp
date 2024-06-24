//
//  Toolbar.swift
//  Fitness App
//
//  Created by Angel Rios on 6/24/24.
//

import SwiftUI

struct Toolbar: ViewModifier {
    
    @Environment(\.dismiss) var dismiss
    
    func body(content: Content) -> some View {
        content
        .toolbar {
            ToolbarItem(placement:.topBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .foregroundStyle(.white)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
    
}
