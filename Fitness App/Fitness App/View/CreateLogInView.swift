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
                    
                    SecureField("", text: $password, prompt: Text("Password").foregroundStyle(Color(.systemGray2)))
                        .fontWeight(.semibold)
                        .modifier(Input())
                        .padding(.bottom, 5)
                    
                    SecureField("", text: $password, prompt: Text("Confirm Password").foregroundStyle(Color(.systemGray2)))
                        .fontWeight(.semibold)
                        .modifier(Input())
                    }
                    .padding(.horizontal, 15)
                    
                    VStack {
                        Button {
                            Task {
                                try await viewModel.createUser(withEmail: email, password: password)
                            }
                        }
                    label: {
                        Text("Next")
                            .font(.custom("Arial-BoldMT", fixedSize: 18))
                            .padding(.horizontal, 95)
                            .padding(.vertical, 10)
                            .foregroundStyle(Color(.midGreen))
                            .background(Color(.lightWhite))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        }
                    .padding(.top, 25)
                    }
                    Spacer()
                }
                .padding(.top, 20)
            }
            
            .toolbar(.hidden)
        }
    }
}
#Preview {
    CreateLogInView()
}
