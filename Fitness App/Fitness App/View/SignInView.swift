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
    @State private var showPassword = false
    @EnvironmentObject var viewModel: AuthModel
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 12) {
                    
                    Spacer()
                    
                    //Image
                    Text("Gym App")
                        .multilineTextAlignment(.center)
                        .font(.custom("Arial-BoldMT", fixedSize: 70))
                        .foregroundStyle(Color(.lightWhite))
                        .opacity(0.7)
                        .padding(.bottom, 30)
                    
                    //Form Fields
                    VStack(spacing: 10){
                        
                        TextField("", text: $email, prompt: Text("Email").foregroundStyle(Color(.systemGray2)))
                            .modifier(Input())
                            .padding(.bottom, 5)
                        
                        PasswordFieldToggle(placeholder: "Password" , text: $password, displayPassword: $showPassword)
                        
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
                    .padding(.bottom, 5)
                    
                    VStack {
                        Button {
                            
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
                    }
                    
                    
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        NavigationLink {
                            StartUp()
                                .navigationBarBackButtonHidden()
                        } label: {
                            Text("Return Home")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(.textGreen))
                        }
                    }
                    
                }
                .padding(.horizontal, 20)
                .padding(.top, 90)
            }
        }
    }
}
#Preview {
    SignInView()
}
