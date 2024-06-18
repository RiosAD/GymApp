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
    
    var body: some View {
        
        ZStack{
            backgroundGradient
                .ignoresSafeArea()
            
           
            
            VStack {
            
              Spacer()
                
                //Image
                Text("App Name")
                    .font(.custom("Arial-BoldMT", fixedSize: 60))
                    .foregroundStyle(Color(white: 0.9))
                    .opacity(0.7)
                    .padding(.bottom, 30)
                
                //Form Fields
                VStack(spacing: 15){
                    InputView(text: $email, placeholder: "Email", isSecureField: false)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .background(Color(.systemGray3))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 30)
                    
                    InputView(text: $password, placeholder: "Password", isSecureField: true)
                        .background(Color(.systemGray3))
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                        .padding(.horizontal, 30)
            }
                
              
              Button(action: {
                  
              },
                     label: {
                  Text("Forgot Password?")
                      .font(.footnote)
                      .fontWeight(.semibold)
                      .foregroundStyle(Color(.darkPurple))
                      .padding(.trailing, 35)
              })
              .frame(maxWidth: .infinity, alignment: .trailing)
              .padding(.top, 0.5)
              
                
              Button(action: {
                  //Execute
                  
              },
                     
                     label: {
                  Text("Log In")
                      .font(.custom("Arial-BoldMT", fixedSize: 18))
                      .padding(.horizontal, 120)
                      .padding(.vertical, 10)
                      .foregroundStyle(Color(white: 0.8))
                      .background(Color(.darkGreen))
                      .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ ))
                      .padding(.top, 5)
                  
                  
              })
              

                Spacer()
               
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 120)
            
           
        }
    }
}
#Preview {
    SignInView()
}
