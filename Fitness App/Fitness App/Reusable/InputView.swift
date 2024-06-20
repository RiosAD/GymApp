//
//  InputView.swift
//  Fitness App
//
//  Created by Angel Rios on 4/26/24.
//

import SwiftUI

struct InputView: View {
    
    @Binding var text: String
  
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            if isSecureField {
                SecureField(placeholder, text: $text)
//                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.init(top: 13, leading: 15, bottom: 0, trailing: 0))
                 
            }
            else {
                TextField(placeholder, text: $text)
//                    .font(.system(size: 15))
                    .fontWeight(.semibold)
                    .padding(.init(top: 13, leading: 15, bottom: 0, trailing: 0))
            }
            
            Divider()
        }
    }
}

#Preview {
    InputView(text: .constant(""), placeholder: "name@example.com")
}
