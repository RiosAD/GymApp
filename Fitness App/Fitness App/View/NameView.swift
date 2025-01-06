//
//  CreateAccountView.swift
//  Fitness App
//
//  Created by Angel Rios on 6/10/24.
//

import SwiftUI

struct NameView: View {
    
    @State private var firstName = ""
    @State private var lastName = "" 
    @State private var DOB = Date()
    @EnvironmentObject var viewModel: AuthModel
    
    var body: some View {
        
        NavigationStack {
            
            ZStack(content: {
                
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 15){
                    
                    Text("Add Name and Birthdate")
                        .font(.system(size: 30))
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightWhite))
                        .padding(.bottom, 30)
                    
                    
                    TextField("", text: $firstName, prompt: Text("First Name").foregroundStyle(Color(.systemGray2)))
                        .modifier(Input())
                        
                    
                    TextField("", text: $lastName, prompt: Text("Last Name").foregroundStyle(Color(.systemGray2)))
                        .modifier(Input())
                       
                    
                    DatePicker("Date of Birth", selection: $DOB, in: ...Date(), displayedComponents: .date)
                        .datePickerStyle(.compact)
                        .colorScheme(.dark)
                        .tint(.midGreen)
                        .fontWeight(.semibold)
                        .font(.system(size: 35))
                        .foregroundStyle(Color(white: 0.7))
                        .padding(.horizontal, 3)
                    
                    VStack {
                        Button {
                            Task {
                                try await viewModel.createUser(firstName: firstName, lastName: lastName, birthDate: DOB)
                            }
                        }
                               label: {
                            Text("Next")
                                .font(.custom("Arial-BoldMT", fixedSize: 18))
                                .padding(.horizontal, 140)
                                .padding(.vertical, 10)
                                .foregroundStyle(Color(.midGreen))
                                .background(Color(.lightWhite))
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                    }
                    .padding(.top, 20)
                    Spacer()
                    
                    
                }
                
                .padding(.horizontal, 15)
                .padding(.top, 20)
                
              
                
                .modifier(Toolbar())
            })
            
        }
        
        
    }
}

#Preview {
    NameView()
}
