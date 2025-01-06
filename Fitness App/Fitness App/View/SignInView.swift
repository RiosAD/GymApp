//
//  SignInView.swift
//  Fitness App
//
//  Created by Angel Rios on 6/6/24.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel: AuthModel
    
    var body: some View {
        
        ZStack{
            backgroundGradient
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
            
              Spacer()
                
                //Image
                Text("Gym App")
                    .multilineTextAlignment(.center)
                    .font(.custom("Arial-BoldMT", fixedSize: 70))
                    .foregroundStyle(Color(white: 0.9))
                    .opacity(0.7)
                    .padding(.bottom, 30)
                
                //Form Fields
                VStack(spacing: 10){
                  
                    TextField("", text: $email, prompt: Text("Email").foregroundStyle(Color(.systemGray2)))
                        .textInputAutocapitalization(.never)
                        .fontWeight(.semibold)
                        .modifier(Input())
                        .padding(.bottom, 5)
                    
                    SecureField("", text: $password, prompt: Text("Password").foregroundStyle(Color(.systemGray2)))
                        .modifier(Input())
                  
            }
             
              Button(action: {
                  //Execute
              },
                     label: {
                  Text("Forgot Password?")
                      .font(.footnote)
                      .fontWeight(.semibold)
                      .foregroundStyle(Color(.lightGreen))
                      .padding(.trailing, 5)
              })
              .frame(maxWidth: .infinity, alignment: .trailing)
                
                VStack {
                    Button {
                        Task {
                            try await viewModel.signIn(withEmail: email, password: password)
                        }
                    }
                         label: {
                      Text("Log In")
                          .font(.custom("Arial-BoldMT", fixedSize: 18))
                          .padding(.horizontal, 120)
                          .padding(.vertical, 10)
                          .foregroundStyle(Color(.midGreen))
                          .background(Color(.lightWhite))
                          .clipShape(RoundedRectangle(cornerRadius: 20))
                      }
                    
//                     .padding(.top, 10)
                }
              

                Spacer()
               
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 120)
            
            .modifier(Toolbar())
        }
    }
}
#Preview {
    SignInView()
}
