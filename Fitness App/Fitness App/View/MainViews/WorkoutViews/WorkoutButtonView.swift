//
//  WorkoutButtonView.swift
//  Fitness App
//
//  Created by Angel Rios on 9/10/24.
//

import SwiftUI

struct WorkoutButtonView: View {
    var body: some View {
        VStack {
            
            
            ScrollView(.vertical) {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus.circle")
                        Text("Add Exercise")
                    })
                    .font(.system(size: 30))
                    
                    Spacer()
                }
                .padding(.leading, 15)
                .scrollTargetLayout()
            }
            
            
            Spacer()
        }
    }
}

#Preview {
    
//    ZStack {
//        backgroundGradient
//            .ignoresSafeArea()
//        
//        WorkoutFormView()
//        
//    }
    
    ExercisesView()
}
