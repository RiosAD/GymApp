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
        .init(id: ExercisesCategory.Cat.legs),
        .init(id: ExercisesCategory.Cat.arms),
        .init(id: ExercisesCategory.Cat.back),
        .init(id: ExercisesCategory.Cat.chest)
    ]
    @State private var activeTab: ExercisesCategory.Cat = .legs
    @State private var viewState: ExercisesCategory.Cat?
    @Query private var data: [AppData]
    
    var body: some View {
        NavigationStack{
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
//                    CATEGORY TAB HEADER
                    HStack(alignment: .center, spacing: 10){
                            ForEach(category) { Cat in
                                Button(action: {
                                    withAnimation(.snappy) {
                                        activeTab = Cat.id
                                        viewState = Cat.id
                                    }
                                    
                                }) {
                                    Text(Cat.id.rawValue)
                                        .font(.system(size: 35))
                                        .font(.largeTitle)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(activeTab == Cat.id ? Color.textGreen : .lightWhite)
                                }
                                .padding(.bottom, 15)
                            }
                        }
                    
                    
                    Divider()
                        .frame(height: 5)
                        .background(Color(.textGreen).opacity(0.1))
                    
                    Spacer()
                    
                    //CONTENT PAGES
                    ScrollView(.horizontal) {
                        HStack(spacing: 0){
                                ForEach(category) { Cat in
                                   WorkoutButtonView()
                                }
                                .containerRelativeFrame([.horizontal])
                                .padding(.top)
                            }
                            .scrollTargetLayout()
                        }
                        .scrollPosition(id: $viewState)
                        .scrollIndicators(.hidden)
                        .scrollTargetBehavior(.paging)
                        .onChange(of: viewState) { oldValue, newValue in
                            if let newValue {
                                withAnimation(.snappy) {
                                    activeTab = newValue
                                }
                            }
                        }
                        
                    
                   Spacer()
                }
                
            }
        }
      
    }
}

#Preview {
    ExercisesView()
}
