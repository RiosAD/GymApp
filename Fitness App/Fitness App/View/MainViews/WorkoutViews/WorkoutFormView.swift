//
//  WorkoutFormView.swift
//  Fitness App
//
//  Created by Angel Rios on 9/10/24.
//

import SwiftUI

struct WorkoutFormView: View {
    @State private var exerciseName = ""
    @State private var rep = ""
    @State private var set = ""
    @State private var exceWeight = ""
    @State private var canEdit = true
    
    var body: some View {
        DisclosureGroup(
            isExpanded: .constant(true),
            content: {
                VStack{
                    Divider()
                        .frame(height: 2)
                        .background(Color(.textGreen).opacity(0.1))
                    
                    HStack() {
                        TextField("", text: $set, prompt: Text("Sets").foregroundStyle(Color(.systemGray2)))
                            .modifier(WorkoutForm())
                            .frame(width: 80, height: 50)
                        
                        Text("X")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.lightWhite)
                            .padding(.horizontal, 70)
                        
                        TextField("", text: $rep, prompt: Text("Reps").foregroundStyle(Color(.systemGray2)))
                            .modifier(WorkoutForm())
                            .frame(width: 80, height: 50)
                        
                    }
                    .padding(.vertical, 5)
                    
                    HStack {
                        TextField("", text: $exceWeight, prompt: Text("Weight").foregroundStyle(Color(.systemGray2)))
                            .modifier(WorkoutForm())
                            .frame(width: 120, height: 50)
                            .padding(.leading, 20)
                        
                        Text("lbs")
                            .foregroundStyle(Color(.lightWhite))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.leading, 25)
                        
                        Spacer()
                        
                        VStack {
                            Button(action: {
                                
                            },
                                   
                            label: {
                                Text("Edit")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 3)
                                    .background(Color(.lightGreen).opacity(0.5))
                                    .clipShape(Capsule())
                            })
                            .padding(.trailing, 10)
                        }
                        .padding(.top, 25)
                    }
                    .padding(.bottom)
                }
                
            },
            label: { TextField("", text: $exerciseName, prompt: Text("Exercise").foregroundStyle(Color(.systemGray2)))
                    .multilineTextAlignment(.leading)
                    .font(.largeTitle)
                    .padding(8)
                    .foregroundStyle(Color(.lightWhite))
                    .fontWeight(.semibold)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            
        )
        .background(Color(.textGreen).opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 5))
        .padding(6)
    }
}

#Preview {
    ZStack {
        backgroundGradient
            .ignoresSafeArea()
        
        WorkoutFormView()
    }
//    ExercisesView()
}
