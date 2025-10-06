//
//  ProfileView.swift
//  Fitness App
//
//  Created by Angel Rios on 7/15/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var showMenu = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 5) {
                    Image(systemName: "person.crop.circle.fill")
                        .font(.system(size: 110))
                        .foregroundStyle(Color(.lightWhite).opacity(0.85))
                        .padding(.vertical)
                    
                    HStack(alignment: .center) {
                        
                        Text("Angel Nava")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(Color(.lightWhite))
                    }
                    
                    HStack {
                        Spacer()
                        
                        VStack {
                            Text("Age")
                                .font(.system(size: 30))
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(.lightWhite))
                                .padding(.bottom, 8)
                            
                                .overlay(alignment: .bottom) {
                                    Rectangle()
                                        .fill(.lightWhite.opacity(0.5))
                                        .frame(width: 58, height: 2)
                                }
                            
                            Text("26")
                                .font(.system(size: 30))
                                .foregroundStyle(Color(.lightWhite))
                        }
                        Spacer()
                        
                        VStack {
                            Text("Weight")
                                .font(.system(size: 30))
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(.lightWhite))
                                .padding(.bottom, 8)
                            
                                .overlay(alignment: .bottom) {
                                    Rectangle()
                                        .fill(.lightWhite.opacity(0.5))
                                        .frame(width: 95, height: 2)
                                }
                            
                            //                            Text("\(User.testUser.weight)")
                            //                                .font(.system(size: 30))
                            //                                .foregroundStyle(Color(.lightWhite))
                            
                            Text("175")
                                .font(.system(size: 30))
                                .foregroundStyle(Color(.lightWhite))
                        }
                        
                        Spacer()
                        
                        VStack {
                            Text("Height")
                                .font(.system(size: 30))
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(.lightWhite))
                                .padding(.bottom, 8)
                            
                                .overlay(alignment: .bottom) {
                                    Rectangle()
                                        .fill(.lightWhite.opacity(0.5))
                                        .frame(width: 92, height: 2)
                                }
                            
                            Text("5'8")
                                .font(.system(size: 30))
                                .foregroundStyle(Color(.lightWhite))
                        }
                        
                        Spacer()
                    }
                    .padding(.vertical)
                    
                    Spacer()
                }
                
                SideMenuSettingsView(isShowing: $showMenu)
                    .accentColor(.blue)
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                    }
                    .foregroundStyle(Color(showMenu ? .clear : .lightWhite))
                    .padding(.horizontal, 10)

                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
