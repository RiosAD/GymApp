//
//  LogInDetailsView.swift
//  Fitness App
//
//  Created by Angel Rios on 7/8/24.
//

import SwiftUI

struct CreateLogInView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPwd = ""
    @State private var showPassword = false
    @EnvironmentObject var viewModel: AuthModel
    
    var body: some View {
        NavigationStack{
            
            ZStack{
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 10) {
                    VStack {
                        Text("Create Log In")
                            .font(.system(size: 40))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.lightWhite))
                            .padding(.bottom, 40)
                   
                    
                    TextField("", text: $email, prompt: Text("Email").foregroundStyle(Color(.systemGray2)))
                        .fontWeight(.semibold)
                        .modifier(Input())
                        .padding(.bottom, 5)
                    
                        PasswordFieldToggle(placeholder: "Password", text: $password, displayPassword: $showPassword)
                        .padding(.bottom, 5)
                    
                        PasswordFieldToggle(placeholder: "Confirm Password", text: $confirmPwd, displayPassword: $showPassword)
                    }
                    .padding(.horizontal, 15)
                    
                    Spacer()
                }
                .padding(.top, 20)
            }
        }
    }
}
#Preview {
    CreateLogInView()
}
