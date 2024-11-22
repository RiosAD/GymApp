//
//  ExercisesTabView.swift
//  Fitness App
//
//  Created by Angel Rios on 7/11/24.
//

import SwiftUI
import SwiftData

struct ExercisesView: View {
    @State private var category: [ExercisesCategory] = [
        .init(id: ExercisesCategory.Cat.arms),
        .init(id: ExercisesCategory.Cat.back),
        .init(id: ExercisesCategory.Cat.chest),
        .init(id: ExercisesCategory.Cat.legs)
    ]
    @State private var activeTab: ExercisesCategory.Cat = .arms
    @State private var viewState: ExercisesCategory.Cat?
    
    @State private var showCreateSheet = false
    @Query(sort: \Exercises.exerciseName) private var exercise: [Exercises]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationStack{
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    Spacer(minLength: 10)
                    
                    //CATEGORY TAB HEADER
                    HStack(alignment: .center, spacing: 10){
                        ForEach(category) { Cat in
                            Button(action: {
                                withAnimation(.snappy) {
                                    activeTab = Cat.id
                                    viewState = Cat.id
                                }
                                
                            }) {
                                Text(Cat.id.rawValue)
                                //Change value to 40; 38 is for preview only
                                    .font(.system(size: 38)) // <<--
                                    .font(.largeTitle)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(activeTab == Cat.id ? Color.textGreen : .lightWhite)
                            }
                            .padding(.bottom, 10)
                        }
                    }
                    .overlay(alignment: .bottom) {
                        Rectangle()
                            .fill(.textGreen.opacity(0.1))
                            .frame(width: 430, height: 5)
                        
                    }
                    .padding(.bottom, 10)
                    
                    //CONTENT PAGES
                    ScrollView(.horizontal) {
                        HStack(spacing: 0) {
                            ForEach(category) { Cat in
                                ScrollView(.vertical) {
                                    VStack {
                                        ForEach(exercise) { Exercises in                            
                                            if Exercises.catSel == Cat.id.rawValue {
                                                ExerciseGroupView(exercise: Exercises)
                                                    .padding(.horizontal, 4)
                                                    .scrollTransition { content, phase in
                                                        content
                                                            .opacity(phase.isIdentity ? 1 : 0)
                                                            .scaleEffect(phase.isIdentity ? 1 : 0.9)
                                                            .blur(radius: phase.isIdentity ? 0 : 5)
                                                }
                                        }
                                    }
                                }
                            }
                            .containerRelativeFrame(.horizontal)
                            .scrollTransition { content, phase in
                                content
                                    .opacity(phase.isIdentity ? 1 : 0)
                                    .scaleEffect(phase.isIdentity ? 1 : 0.9)
                                    .blur(radius: phase.isIdentity ? 0 : 3)
                                }
                            }
                        }
                        .scrollTargetLayout()
                    }
                    .scrollIndicators(.hidden)
                    .scrollPosition(id: $viewState)
                    .scrollTargetBehavior(.paging)
                    .onChange(of: viewState) { oldValue, newValue in
                        if let newValue {
                            withAnimation(.snappy(duration: 0.3)) {
                                activeTab = newValue
                            }
                        }
                    }
                    
                    HStack {
                        Spacer()
                        
                        Button(action: {
                            showCreateSheet.toggle()
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                            
                        })
                        .font(.system(size: 50))
                        .foregroundStyle(Color.lightWhite)
                        
                    }
                    .padding(.trailing, 12)
                    .sheet(isPresented: $showCreateSheet, content: {
                        Create_New_Exercise_View()
                            .presentationDetents([.height(670)])
                    })
                    .padding(.bottom, 15)
                }
                
            }
        }
        
    }
    
    
}

#Preview {
    let preview = PreviewSampleData()
    preview.addSample(Exercises.previewData)
    return ExercisesView()
        .modelContainer(preview.container)
}
