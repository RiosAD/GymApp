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
    @State private var DOB = Date()
   
    
    let maxFt = 1
    let maxIn = 2
    let maxLbs = 3
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 15) {
                    
                        Text("Personal Details")
                            .font(.system(size: 40))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.lightWhite))
                            .padding(.leading, 55)
                            .padding(.bottom, 30)
                            .padding(.top, 20)
                    
                   
                    HStack(alignment: .bottom) {
                            
                            VStack() {
                                
                                    TextField("", text: $feet, prompt: Text("Ft").foregroundStyle(Color(.systemGray2)))
                                            .onChange(of: feet) { _, newValue in
                                                feet = String(newValue.prefix(maxFt))}
                                            .keyboardType(.numberPad)
                                            .multilineTextAlignment(.center)
                                            .font(.system(size: 45))
                                            .padding(10)
                                            .foregroundStyle(Color(.lightWhite))
                                            .fontWeight(.semibold)
                                            .background(Color(.darkGreen))
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .frame(width: 70, height: 10, alignment: .center)

                                }
                                    Text("'")
                                       .foregroundStyle(Color(.systemGray2))
                                       .font(.system(size: 40))
                                       .fontWeight(.semibold)
                        

                            VStack {
                                TextField("", text: $inches, prompt: Text("In").foregroundStyle(Color(.systemGray2)))
                                    .onChange(of: inches) { _, newValue in
                                        inches = String(newValue.prefix(maxIn))}
                                    .keyboardType(.numberPad)
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 45))
                                    .padding(10)
                                    .foregroundStyle(Color(.lightWhite))
                                    .fontWeight(.semibold)
                                    .background(Color(.darkGreen))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .frame(width: 90, height: 10, alignment: .center)
                           
                            }
                            
                             Text("\"")
                                .foregroundStyle(Color(.systemGray2))
                                .font(.system(size: 40))
                                .fontWeight(.semibold)

                            }
                    
                        .padding(.leading, 20)
                        .padding(.bottom, 80)
                    
                    HStack(alignment: .lastTextBaseline) {
                        VStack {
                            TextField("", text: $weight, prompt: Text("Weight").foregroundStyle(Color(.systemGray2)))
                                    .onChange(of: weight) { _, newValue in
                                        weight = String(newValue.prefix(maxLbs))}
                                    .keyboardType(.numberPad)
                                    .multilineTextAlignment(.center)
                                    .font(.system(size: 45))
                                    .padding(10)
                                    .foregroundStyle(Color(.lightWhite))
                                    .fontWeight(.semibold)
                                    .background(Color(.midGreen))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .frame(width: 200, height: 10, alignment: .center)
                        }
                        
                        Text("lbs")
                           .foregroundStyle(Color(.systemGray2))
                           .font(.system(size: 40))
                           .fontWeight(.semibold)
                        
                    }
                    
                    .padding(.leading, 20)
                    .padding(.bottom, 40)
                    
                    DatePicker("Date of Birth", selection: $DOB, in: ...Date(), displayedComponents: .date)
                       
                        .datePickerStyle(.compact)
                        .fontWeight(.semibold)
                        .font(.system(size: 35))
                        .foregroundStyle(Color(white: 0.7))
                        .padding(.horizontal, 20)
                    
                    VStack {
                        NavigationLink {
                            LogInDetailsView()
                                .navigationBarBackButtonHidden()
                        }
                               label: {
                            Text("Next")
                                .font(.custom("Arial-BoldMT", fixedSize: 18))
                                .padding(.horizontal, 120)
                                .padding(.vertical, 10)
                                .foregroundStyle(Color(.lightBlack))
                                .background(Color(.lightWhite))
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                    }
                    .padding(.leading, 55)
                    .padding(.top, 50)
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
