//
//  ProfileView.swift
//  Fitness App
//
//  Created by Angel Rios on 7/15/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationStack{
            
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 5) {
                        Image(systemName: "person.crop.circle.fill")
                            .font(.system(size: 80))
                            .foregroundStyle(Color(.lightWhite).opacity(0.85))
                            .padding(.vertical)
                        
                    HStack(alignment: .center) {
                        
                        Text("Test")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(Color(.lightWhite))
                            .padding(.leading, 15)
                        
                        
                        Text("User")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(Color(.lightWhite))
                            .padding(.trailing, 10)
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
                                        .frame(width: 55, height: 2)
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
                            
                            Text("195")
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
                                        .frame(width: 95, height: 2)
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
            }
        }
    }
}

#Preview {
    ProfileView()
}
