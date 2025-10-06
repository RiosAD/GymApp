//
//  SettingsView.swift
//  Fitness App
//
//  Created by Angel Rios on 9/14/25.
//

import SwiftUI

struct SideMenuSettingsView: View {
    @Binding var isShowing: Bool
    @State private var isDeleting = false
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var viewModel: AuthModel
    
    var body: some View {
        
        ZStack {
            
            if isShowing {
                Rectangle()
                    .opacity(0.2)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing.toggle()
                    }
                HStack {
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Spacer()
                        
                        Button(role: .destructive) {
                            isDeleting.toggle()
                        } label: {
                            Text("Delete")
                                .font(.custom("Arial-BoldMT", fixedSize: 18))
                                .padding(.horizontal, 90)
                                .padding(.vertical, 10)
                                .background(Color(.lightWhite))
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                        .alert("Are you sure?", isPresented: $isDeleting) {
                            Button(role: .destructive) {
                                viewModel.deleteAccount()
                            } label: {
                                Text("Delete")
                                
                            }
                        } message: {
                            Text("You will lose all of your saved data.")
                        }
                        
                        
                        Button {
                            viewModel.signOut()
                        } label: {
                            Text("Sign Out")
                                .font(.custom("Arial-BoldMT", fixedSize: 18))
                                .padding(.horizontal, 80)
                                .padding(.vertical, 10)
                                .foregroundStyle(Color(.midGreen))
                                .background(Color(.lightWhite))
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                        }
                        
                    }
                    .padding()
                    .frame(width: 270, alignment: .trailing)
                    .background(Color.midGreen)
                }
                .transition(.move(edge: .trailing))
            }
        }
        
        .animation(.easeInOut, value: isShowing)
    }
}

#Preview {
    SideMenuSettingsView(isShowing: .constant(true))
}
