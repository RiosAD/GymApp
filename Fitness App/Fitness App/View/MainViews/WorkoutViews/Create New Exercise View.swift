//
//  Create New Exercise View.swift
//  Fitness App
//
//  Created by Angel Rios on 9/30/24.
//

import SwiftUI

struct Create_New_Exercise_View: View {
    @State private var exerciseName = ""
    @State private var rep = ""
    @State private var sets = ""
    @State private var exceWeight = ""
//    @Binding var data: AppData
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                DisclosureGroup(
                    isExpanded: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/,
                    content: {
                        VStack {
                            Divider()
                                .frame(height: 1)
                                .background(Color(.textGreen).opacity(0.1))
                            
                            HStack {
                                TextField("", text: $sets, prompt: Text("Sets").foregroundStyle(Color(.systemGray)))
                                    .keyboardType(.numberPad)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color(.lightWhite))
                                    .padding(5)
                                   
                                
                                Divider()
                                    .frame(width: 1)
                                    .background(Color(.textGreen).opacity(0.1))
                                 
                                TextField("", text: $rep, prompt: Text("Reps").foregroundStyle(Color(.systemGray)))
                                    .keyboardType(.numberPad)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(Color(.lightWhite))
                                    .padding(.leading, 10)
                            }
                            Divider()
                                .frame(height: 1)
                                .background(Color(.textGreen).opacity(0.1))
                            
                            TextField("", text: $exceWeight, prompt: Text("Exercise Weight").foregroundStyle(Color(.systemGray)))
                                .keyboardType(.numberPad)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(.lightWhite))
                                .padding(5)
                                .padding(.bottom, 10)
                        }
                        
                    },label: { TextField("", text: $exerciseName, prompt: Text("Exercise Name").foregroundStyle(Color(.systemGray)))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.lightWhite))
                            .padding(7)
                        
                    })
                    .background(Color(.darkGreen).opacity(0.5))
                    .disclosureGroupStyle(NewExerciseDisclosureStyle())
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(6)
                
            }
        }
    }
}

#Preview {
    Create_New_Exercise_View()
}
