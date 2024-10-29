//
//  WorkoutButtonView.swift
//  Fitness App
//
//  Created by Angel Rios on 9/10/24.
//

import SwiftUI

struct WorkoutButtonView: View {
    

    @State private var showCreateSheet = false
    
    var body: some View {
        VStack {
            ScrollView(.vertical) {
                HStack {
                    Button(action: {
                        showCreateSheet.toggle()
                    }, label: {
                        Image(systemName: "plus.circle")
                        Text("Add Exercise")
                    })
                    .font(.system(size: 30))
                    
                    
                    Spacer()
                }
                .padding(.leading, 15)
                .scrollTargetLayout()
                .sheet(isPresented: $showCreateSheet, content: {
                    Create_New_Exercise_View()
                        .presentationDetents([.height(670)])
                })
                
            }
            
            
//            Spacer()
        }
    }
}

#Preview {
    
    ZStack {
        backgroundGradient
            .ignoresSafeArea()
        
        WorkoutButtonView()
        
    }
    
//    ExercisesView()
}
