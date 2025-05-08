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
    @State private var bodyWeight = ""
    
    let maxFt = 1
    let maxIn = 2
    let maxLbs = 3
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 15) {
                    
                        Text("Personal Details")
                            .font(.system(size: 40))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.lightWhite))
                            .padding(.bottom, 30)
                            .padding(.top, 20)
             
                        
                    
                   
                    VStack(alignment: .leading) {
                        HStack(alignment: .bottom) {
                            
                            TextField("", text: $feet, prompt: Text("Ft").foregroundStyle(Color(.systemGray2)))
                                .onChange(of: feet) { _, newValue in
                                    feet = String(newValue.prefix(maxFt))}
                                .modifier(DetailsField())                              
                                .frame(width: 70, height: 10, alignment: .center)
                            
                            
                            Text("'")
                                .foregroundStyle(Color(.systemGray2))
                                .font(.system(size: 40))
                                .fontWeight(.semibold)
                            
                            
                            
                            TextField("", text: $inches, prompt: Text("In").foregroundStyle(Color(.systemGray2)))
                                .onChange(of: inches) { _, newValue in
                                    inches = String(newValue.prefix(maxIn))}
                                .modifier(DetailsField())                                    
                                .frame(width: 90, height: 10, alignment: .center)
                            
                            Text("\"")
                                .foregroundStyle(Color(.systemGray2))
                                .font(.system(size: 40))
                                .fontWeight(.semibold)
                            
                        }
                        .padding(.bottom, 70)
                  
                    
                    HStack(alignment: .lastTextBaseline) {
                            TextField("", text: $bodyWeight, prompt: Text("Weight").foregroundStyle(Color(.systemGray2)))
                                    .onChange(of: bodyWeight) { _, newValue in
                                        bodyWeight = String(newValue.prefix(maxLbs))}
                                    .modifier(DetailsField()) 
                                    .frame(width: 190, height: 10, alignment: .center)
                        
                        Text("lbs")
                           .foregroundStyle(Color(.systemGray2))
                           .font(.system(size: 40))
                           .fontWeight(.semibold)
                    }
                    .padding(.bottom, 15)
                }
                    .padding(.trailing, 50)
                    
                    Spacer()
               }
            }
        }
        
    }
        
    
}

#Preview {
    DetailsView()
}
