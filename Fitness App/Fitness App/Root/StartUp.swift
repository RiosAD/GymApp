//
//  SignInView.swift
//  Fitness App
//
//  Created by Angel Rios on 5/16/24.
//

import SwiftUI

struct StartUp: View {
    
    var body: some View {
        
        ZStack {
            backgroundGradient
                .ignoresSafeArea()
            
            VStack {
                
               Spacer()
                
                //Image
                Text("App Name")
                    .font(.custom("Arial-BoldMT", fixedSize: 60))
                    .foregroundStyle(Color(white: 0.9))
                    .opacity(0.7)
                    .padding(.bottom)
                
                    Spacer()
                
                VStack(spacing: 20) {
                    
                
                    //LogIn Button
                    Button(action: {
                        //Execute
                        
                    },
                           
                           label: {
                        Text("Log In")
                            .font(.custom("Arial-BoldMT", fixedSize: 18))
                            .padding(.horizontal, 130)
                            .padding(.vertical, 10)
                            .foregroundStyle(Color(white: 0.8))
                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ ))
                            .overlay (RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(.darkGreen, lineWidth: 5))
                        })
                    
                    
                    //LogIn Button
                    Button(action: {
                        //Execute
                    },
                           
                           label: {
                        Text("Create Account")
                            .font(.custom("Arial-BoldMT", fixedSize: 18))
                            .padding(.horizontal, 90)
                            .padding(.vertical, 10)
                            .foregroundStyle(Color(white: 0.8))
                            .clipShape(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/ ))
                            .overlay (RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(.darkGreen, lineWidth: 5))
                            
                        
                    })
                    
                    .padding(.bottom, 40)
                }
               .padding(.top, 200)
                
            }
        }
        
    }
}
    #Preview {
        StartUp()
    }

