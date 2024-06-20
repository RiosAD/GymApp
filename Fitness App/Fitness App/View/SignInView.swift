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
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        
        ZStack{
            backgroundGradient
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
            
              Spacer()
                
                //Image
                Text("App Name")
                    .font(.custom("Arial-BoldMT", fixedSize: 70))
                    .foregroundStyle(Color(white: 0.9))
                    .opacity(0.7)
                    .padding(.bottom, 20)
                
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
                  //Execute
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
                      .clipShape(RoundedRectangle(cornerRadius: 20))
                  })
                
                    .padding(.top, 10)
              

                Spacer()
               
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 120)
            
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
        }
    }
}
#Preview {
    SignInView()
}
