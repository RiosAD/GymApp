//
//  ExercisesTabView.swift
//  Fitness App
//
//  Created by Angel Rios on 7/11/24.
//

import SwiftUI

struct ExercisesTabView: View {
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack {
                    Text("Exercises Tab")
                        .font(.system(size: 30))
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightWhite))
                }
            }
        }
      
    }
}

#Preview {
    ExercisesTabView()
}
