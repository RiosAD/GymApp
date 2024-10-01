//
//  WorkoutFormView.swift
//  Fitness App
//
//  Created by Angel Rios on 9/10/24.
//

import SwiftUI
import SwiftData

struct ExerciseGroupView: View {
    
//    @Bindable var data: AppData
    
    var body: some View {
        DisclosureGroup(
            content: {
                VStack{
                    Divider()
                        .frame(height: 2)
                        .background(Color(.textGreen).opacity(0.1))
                    
                    HStack() {
                        Text("sets")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.lightWhite)
                            .frame(width: 80, height: 50)
                        
                        Text("X")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.lightWhite)
                            .padding(.horizontal, 70)
                        
                        Text("rep")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.lightWhite)
                        .frame(width: 80, height: 50)
                        
                    }
                    .padding(.vertical, 5)
                    
                    HStack {
                        Text("exceWeight")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.lightWhite)
                            .frame(width: 120, height: 50)
                            .padding(.leading, 20)
                        
                        Text("lbs")
                            .foregroundStyle(Color(.lightWhite))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.leading, 25)
                        
                        Spacer()
                    }
                    .padding(.bottom)
                }
                
            },
            label: { Text("exerciseName")
                        .font(.largeTitle)
                        .padding(12)
                        .foregroundStyle(Color(.lightWhite))
                        .fontWeight(.semibold)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
            }
            
        )
        .background(Color(.textGreen).opacity(0.1))
        .disclosureGroupStyle(ChevronDisclosureStyle())
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(6)
    }
}

#Preview {
    ZStack {
        backgroundGradient
            .ignoresSafeArea()
        
        ExerciseGroupView()
    }
//    ExercisesView()
}
