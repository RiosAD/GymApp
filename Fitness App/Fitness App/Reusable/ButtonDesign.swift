//
//  ButtonsView.swift
//  Fitness App
//
//  Created by Angel Rios on 6/6/24.
//

import SwiftUI

struct ButtonDesign: View {
    
    var body: some View {
        
        Button(action: {
            //Execute
        },
               
               label: {
            Text("Hello World!")
                .font(.custom("Arial-BoldMT", fixedSize: 18))
                .foregroundStyle(Color(white: 0.1))
                .padding(.horizontal, 120)
                .padding(.vertical, 10)
                .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ ))
                .overlay (RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(.darkGreen, lineWidth: 5)
                    .frame(maxWidth: .infinity))
            })
        
    }
}

#Preview {
    ButtonDesign()
}
