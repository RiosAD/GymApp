//
//  CreateAccountView.swift
//  Fitness App
//
//  Created by Angel Rios on 6/10/24.
//

import SwiftUI

struct NameView: View {
    
    
//    @State private var firstName = ""
//    @State private var lastName = "" 
//    @State private var DOB = Date()
    @Binding var newUser: UserData
    @State private var showDOBSheet = false
    
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
                    
                    
                    TextField("", text: $newUser.firstName, prompt: Text("First Name").foregroundStyle(Color(.systemGray2)))
                        .modifier(Input())
                        
                    
                    TextField("", text: $newUser.lastName, prompt: Text("Last Name").foregroundStyle(Color(.systemGray2)))
                        .modifier(Input())
                       
                    HStack {
                        
                        Text("Birthdate")
                            .font(.system(size: 25))
                            .foregroundStyle(Color(.systemGray2))
                            .fontWeight(.semibold)
                        
                        Image(systemName: "calendar")
                            .font(.system(size: 20))
                            .foregroundStyle(Color(.systemGray2))
                        
                        Spacer()
                        
                        Button ("\(newUser.DOB.formatted(date: .numeric, time: .omitted))") {
                            showDOBSheet.toggle()
                            
                        }
                        .padding(5)
                        .font(.system(size: 20))
                        .foregroundStyle(Color(.lightWhite))
                        .fontWeight(.semibold)
                        
                        .sheet(isPresented: $showDOBSheet, content: {
                            BirthdateSheet(dateOfBirth: $newUser.DOB)
                                .presentationDetents([.height(350)])
                        })
                    }
                    .padding()
                    .background(Color(.darkGreen))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Spacer()
                    
                    
                }
                
                .padding(.horizontal, 15)
                .padding(.top, 20)
            })
        }
        
        
    }
}

//#Preview {
//    NameView(newUser: UserData)
//}
