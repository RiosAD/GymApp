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
    @State private var username = ""
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack(content: {
                
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 15){
                    
                    Text("Add name and username")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightWhite))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    
                    
                    TextField("", text: $firstName, prompt: Text("First Name").foregroundStyle(Color(.systemGray2)))
                        .modifier(Field())

                    
                    TextField("", text: $lastName, prompt: Text("Last Name").foregroundStyle(Color(.systemGray2)))
                        .modifier(Field())
                       
                    
                    TextField("", text: $username, prompt: Text("Username").foregroundStyle(Color(.systemGray2)))
                        .modifier(Field())
                    
                    VStack {
                        NavigationLink {
                            DetailsView()
                                .navigationBarBackButtonHidden()
                        }
                               label: {
                            Text("Next")
                                .font(.custom("Arial-BoldMT", fixedSize: 18))
                                .padding(.horizontal, 120)
                                .padding(.vertical, 10)
                                .foregroundStyle(Color(.lightBlack))
                                .background(Color(.lightWhite))
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                    }
                    .padding(.top, 20)
                    Spacer()
                    
                    
                }
                
                .padding(.horizontal, 20)
                .padding(.top, 50)
                
              
                
                .modifier(Toolbar())
            })
            
        }
        
        
    }
}

#Preview {
    NameView()
}
