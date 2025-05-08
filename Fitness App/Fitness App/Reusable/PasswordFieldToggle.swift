//
//  SecureField.swift
//  Fitness App
//
//  Created by Angel Rios on 4/6/25.
//

import SwiftUI

struct PasswordFieldToggle: View {
    var placeholder: String
    @Binding var text: String
    @Binding var displayPassword: Bool
    
    var body: some View {
        ZStack {
            if displayPassword {
                TextField("", text: $text, prompt: Text(placeholder).foregroundStyle(Color(.systemGray2)))
                    .modifier(Input())
                   
                   
                    
            }
            else {
                SecureField("", text: $text, prompt: Text(placeholder).foregroundStyle(Color(.systemGray2)))
                    .modifier(Input())   
            }
            
            HStack {
                Spacer()
                
                Button {
                    withAnimation(.snappy) {
                        displayPassword.toggle()
                    }
                }   label: {
                    Image(systemName: displayPassword ? "eye" : "eye.slash")
                        .contentTransition(.symbolEffect(.replace.magic(fallback: .downUp.wholeSymbol), options: .nonRepeating))
                        .foregroundColor(displayPassword ? Color.textGreen : Color(.systemGray2))
                        .padding()
                }
            }
        }
    }
}

#Preview {
    PasswordFieldToggle(placeholder: "Password", text: .constant(""), displayPassword: .constant(false))
}
