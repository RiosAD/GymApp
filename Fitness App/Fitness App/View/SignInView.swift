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
                VStack(spacing: 15){
                  
                    TextField("Email", text: $email)
                        .textInputAutocapitalization(.never)
                        .fontWeight(.semibold)
                        .modifier(Input())
                    
                    SecureField("Password", text: $password)
                        .fontWeight(.semibold)
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
                      .foregroundStyle(Color(.lightBlack))
                      .background(Color(.lightWhite))
                      .clipShape(RoundedRectangle(cornerRadius: 20))
                  })
                
                    .padding(.top, 10)
              

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
