//
//  DetailsView.swift
//  Fitness App
//
//  Created by Angel Rios on 6/20/24.
//

import SwiftUI

struct DetailsView: View {
    
    @State private var feet = ""
    @State private var inches = ""
    @State private var weight = ""
    let maxFt = 1
    let maxIn = 2
    let maxLbs = 3
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 15) {
                    
                    Text("Personal Details")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightWhite))
                        .padding(.bottom, 30)
                    
                        HStack() {
                            
                            VStack() {
                                
                                    TextField("", text: $feet, prompt: Text("").foregroundStyle(Color(.systemGray2)))
                                            .onChange(of: feet) { _, newValue in
                                                feet = String(newValue.prefix(maxFt))}
                                            .keyboardType(.numberPad)
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 30))
                                            .padding(10)
                                            .foregroundStyle(Color(.lightWhite))
                                            .fontWeight(.semibold)
                                            .frame(width: 50, height: 10, alignment: .center)
                                    Divider()
                                        .background(Color(.systemGray3))
                                        .frame(width: 50, height: 10, alignment: .bottom)
                                }
                                    Text("Ft")
                                       .foregroundStyle(Color(.systemGray2))
                                       .font(.system(size: 25))
                                       .fontWeight(.semibold)
                                     
                                
                            
                            VStack {
                                TextField("", text: $inches, prompt: Text("").foregroundStyle(Color(.systemGray2)))
                                    .onChange(of: inches) { _, newValue in
                                        inches = String(newValue.prefix(maxIn))}
                                    .keyboardType(.numberPad)
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 30))
                                    .padding(10)
                                    .foregroundStyle(Color(.lightWhite))
                                    .fontWeight(.semibold)
                                    .frame(width: 60, height: 10, alignment: .center)
                                Divider()
                                    .background(Color(.systemGray3))
                                    .frame(width: 50, height: 10, alignment: .bottom)
                            }
                            
                             Text("In")
                                .foregroundStyle(Color(.systemGray2))
                                .font(.system(size: 25))
                                .fontWeight(.semibold)
                            
                            VStack {
                                TextField("", text: $weight, prompt: Text("").foregroundStyle(Color(.systemGray2)))
                                        .onChange(of: weight) { _, newValue in
                                            weight = String(newValue.prefix(maxLbs))}
                                        .keyboardType(.numberPad)
                                        .multilineTextAlignment(.center)
                                        .font(.system(size: 30))
                                        .padding(10)
                                        .foregroundStyle(Color(.lightWhite))
                                        .fontWeight(.semibold)
                                        .frame(width: 80, height: 10, alignment: .center)
                                Divider()
                                    .background(Color(.systemGray3))
                                    .frame(width: 60, height: 10, alignment: .bottom)
                            }
                                Text("lbs")
                                   .foregroundStyle(Color(.systemGray2))
                                   .font(.system(size: 25))
                                   .fontWeight(.semibold)
                            }
                    
                            Spacer()
                        }
              
                }
                .modifier(Toolbar())
            }
            
        }
        
    
}

#Preview {
    DetailsView()
}
