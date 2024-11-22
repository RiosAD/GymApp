//
//  Create New Exercise View.swift
//  Fitness App
//
//  Created by Angel Rios on 9/30/24.
//

import SwiftUI

struct Create_New_Exercise_View: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var modelContext
    @State private var category: [ExercisesCategory] = [
        .init(id: ExercisesCategory.Cat.arms),
        .init(id: ExercisesCategory.Cat.back),
        .init(id: ExercisesCategory.Cat.chest),
        .init(id: ExercisesCategory.Cat.legs)
    ]
    
    @State private var pickerSelection: ExercisesCategory.Cat = .arms
    @State private var exerciseName = ""
    @State private var rep = ""
    @State private var sets = ""
    @State private var exceWeight = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(alignment: .leading) {
                        TextField("", text: $exerciseName, prompt: Text("Exercise Name").foregroundStyle(Color(.systemGray)))
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.lightWhite))
                    
                    Divider()
                        .frame(height: 1.5)
                        .background(Color(.textGreen).opacity(0.1))
                    
                    HStack {
                            TextField("", text: $sets, prompt: Text("Sets").foregroundStyle(Color(.systemGray)))
                                .keyboardType(.numberPad)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(.lightWhite))
                        
                        Divider()
                            .frame(width: 1.5, height: 40)
                            .background(Color(.textGreen).opacity(0.1))
                            .padding(.trailing, 30)
                        
                            TextField("", text: $rep, prompt: 
                                Text("Reps").foregroundStyle(Color(.systemGray)))
                                .keyboardType(.numberPad)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(Color(.lightWhite))
                        
                    }
                    
                    Divider()
                        .frame(height: 1.5)
                        .background(Color(.textGreen).opacity(0.1))
                    
                        TextField("", text: $exceWeight, prompt: Text("Exercise Weight").foregroundStyle(Color(.systemGray)))
                            .keyboardType(.numberPad)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.lightWhite))
                    
                    Divider()
                        .frame(height: 1.5)
                        .background(Color(.textGreen).opacity(0.1))
                    
                        Text("Category")
                        .foregroundStyle(Color(.systemGray))
                    
                        Picker ("", selection: $pickerSelection) {
                            ForEach(category) { Cat in
                                Text(Cat.id.rawValue)
                                    .foregroundStyle(Color(.lightWhite))
                                    .tag(Cat.id)
                            }
                         }
                        .pickerStyle(.palette)
                    
                    }
                .modifier(Input())
                .padding(.horizontal, 5)
                .padding(.bottom, 90)
                
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            withAnimation {
                                let newExercise = Exercises(exerciseName: exerciseName, rep: rep, sets: sets, exceWeight: exceWeight, date: Date(), catSel: pickerSelection.rawValue
                                )
                                modelContext.insert(newExercise)
                                dismiss()
                            }
                            
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
    
}

#Preview {
    
    Create_New_Exercise_View()
}
