//
//  CreateAccountView.swift
//  Fitness App
//
//  Created by Angel Rios on 6/10/24.
//

import SwiftUI

struct CreateAccountView: View {
    
    @State private var firstName = ""
    @State private var lastName = "" 
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        NavigationStack {
            
            ZStack(content: {
                
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 15){
                    
                    TextField("First Name", text: $firstName)
                        .fontWeight(.semibold)
                        .padding(12)
                        .background(Color(.systemGray3))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 30)
            
                    
                    TextField("Last Name", text: $lastName)
                        .fontWeight(.semibold)
                        .padding(12)
                        .background(Color(.systemGray3))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 30)
                }
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
          
            })
            
        }
        
        
    }
}

#Preview {
    CreateAccountView()
}
