//
//  EditGroupView.swift
//  Fitness App
//
//  Created by Angel Rios on 10/15/24.
//

import SwiftUI
import SwiftData

struct EditGroupView: View {
    
    @Bindable var exercise: Exercises
    @Environment(\.dismiss) private var dismiss
//    @State private var exerciseName = ""
//    @State private var rep = ""
//    @State private var sets = ""
//    @State private var exceWeight = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack {
                    DisclosureGroup(
                        isExpanded: /*@START_MENU_TOKEN@*/.constant(true)/*@END_MENU_TOKEN@*/,
                        content: {
                            VStack {
                                Divider()
                                    .frame(height: 1)
                                    .background(Color(.textGreen).opacity(0.1))
                                
                                HStack {
                                    TextField("Sets", text: $exercise.sets)
                                        .foregroundStyle(Color(.lightWhite))
                                        .keyboardType(.numberPad)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .padding(5)
                                    
                                    
                                    Divider()
                                        .frame(width: 1)
                                        .background(Color(.textGreen).opacity(0.1))
                                    
                                    TextField("Reps", text: $exercise.rep)
                                        .foregroundStyle(Color(.lightWhite))
                                        .keyboardType(.numberPad)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .padding(.leading, 10)
                                }
                                Divider()
                                    .frame(height: 1)
                                    .background(Color(.textGreen).opacity(0.1))
                                
                                TextField("Exercise Weight", text: $exercise.exceWeight)
                                    .foregroundStyle(Color(.lightWhite))
                                    .keyboardType(.numberPad)
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .padding(5)
                                    .padding(.bottom, 10)
                            }
                            
                        },label: { TextField("Exercise Name", text: $exercise.exerciseName)
                                .foregroundStyle(Color(.lightWhite))
                                .font(.title)
                                .fontWeight(.semibold)
                                .padding(7)
                            
                        })
                    .background(Color(.darkGreen).opacity(0.5))
                    .disclosureGroupStyle(NewExerciseDisclosureStyle())
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(6)
                    .padding(.top, 140)
                    
                    Spacer()
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        
                        dismiss()
                    }, label: {
                        Text("Done")
                            .font(.title3)
                            .fontWeight(.bold)
                    })
                }
            }

        }
    }
}
#Preview {
    ExercisesView()
}
