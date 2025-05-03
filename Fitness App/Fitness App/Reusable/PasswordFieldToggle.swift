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
        if displayPassword {
            TextField("", text: $text, prompt: Text(placeholder).foregroundStyle(Color(.systemGray2)))
                .modifier(Input())
                .overlay(alignment: .trailing) {
                    Button {
                        withAnimation(.snappy) {
                            displayPassword = false
                        }
                    }   label: {
                        Image(systemName: "eye")
                            .foregroundColor(Color(.lightGreen))
                            .padding()
                            .contentTransition(.symbolEffect)
                    }
                }
               
                
        }
        else {
            SecureField("", text: $text, prompt: Text(placeholder).foregroundStyle(Color(.systemGray2)))
                .modifier(Input())
                .overlay(alignment: .trailing) {
                    Button {
                        withAnimation(.snappy) {
                            displayPassword = true
                        }
                    }   label: {
                        Image(systemName: "eye.slash")
                            .foregroundColor(Color(.systemGray))
                            .padding()
                            .contentTransition(.symbolEffect)
                    }
                }

            
        }
    }
}

#Preview {
    PasswordFieldToggle(placeholder: "Password", text: .constant(""), displayPassword: .constant(false))
}
