//
//  WorkoutFormView.swift
//  Fitness App
//
//  Created by Angel Rios on 9/10/24.
//

import SwiftUI
import SwiftData

struct ExerciseGroupView: View {
    
    @Bindable var exercise: Exercises
    @Environment (\.modelContext) private var modelContext
    @State private var showEditSheet = false
    
    var body: some View {
        DisclosureGroup(
            content: {
                VStack{
                    Divider()
                        .frame(height: 2)
                        .background(Color(.textGreen).opacity(0.1))
                    
                    HStack() {
                        Text(exercise.sets)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.lightWhite)
                            .frame(width: 80, height: 50)
                        
                        Text("X")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.lightWhite)
                            .padding(.horizontal, 70)
                        
                        Text(exercise.rep)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.lightWhite)
                        .frame(width: 80, height: 50)
                        
                    }
                    .padding(.vertical, 5)
                    
                    HStack {
                        Text(exercise.exceWeight)
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.lightWhite)
                            .frame(width: 120, height: 50)
                            .padding(.leading, 10)
                        
                        Text("lbs")
                            .foregroundStyle(Color(.lightWhite))
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .padding(.leading, 25)
                        
                        Spacer()
                        
                        VStack {
                            Menu {
                                Button {
                                    showEditSheet.toggle()
                                    
                                } label: {
                                    
                                    Label("Edit", systemImage: "square.and.pencil")
                                }
                                
                                Button(role: .destructive) {
                                    withAnimation {
                                        modelContext.delete(exercise)
                                    }
                                    
                                } label: {
                                    
                                    Label("Delete", systemImage: "trash")
                                }
                                
                             } label: {
                                Image(systemName: "ellipsis.circle.fill")
                                    .foregroundStyle(Color(.lightWhite))
                                    .font(.system(size: 18))
                                    .padding(.trailing, 38)
                            }
                             .sheet(isPresented: $showEditSheet, content: {
                                 EditGroupView(exercise: exercise)
                                     .presentationDetents([.height(670)])
                         })

                         }
                        .padding(.top, 10)
                       
                    }
                    .padding(.bottom)
                }
                
            },
            label: { Text(exercise.exerciseName)
                        .font(.largeTitle)
                        .lineLimit(1)
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
