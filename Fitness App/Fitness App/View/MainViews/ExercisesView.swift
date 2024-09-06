//
//  ExercisesTabView.swift
//  Fitness App
//
//  Created by Angel Rios on 7/11/24.
//

import SwiftUI

struct ExercisesView: View {
    @State private var category: [ExercisesCategory] = [
        .init(id: ExercisesCategory.Cat.legs),
        .init(id: ExercisesCategory.Cat.arms),
        .init(id: ExercisesCategory.Cat.back),
        .init(id: ExercisesCategory.Cat.chest)
    ]
   
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack() {
                        ScrollView(.horizontal) {
                            HStack(spacing: 0){
                                ForEach(category) { Cat in
                                    Text(Cat.id.rawValue)
                                        .containerRelativeFrame([.horizontal, .vertical])
                                }
                            }
                            .scrollTargetLayout()
                        }
                        .scrollIndicators(.hidden)
                        .scrollTargetBehavior(.paging)
                   
                    
                    
                    
                    
                    
                }
            }
        }
      
    }
}

#Preview {
    ExercisesView()
}
