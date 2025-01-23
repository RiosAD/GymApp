//
//  TabView.swift
//  Fitness App
//
//  Created by Angel Rios on 7/15/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            ExercisesView()
                .tabItem {
                    Image(systemName: "dumbbell")
                    Text("Exercises")
                }
                .tag(0)
                .transition(AnyTransition.move(edge: .leading).combined(with: .slide))
            
            NutritionView()
                .tabItem {
                    Image(systemName: "fork.knife.circle")
                    Text("Nutrition")
                }
                .tag(1)
                .transition(AnyTransition.move(edge: .leading).combined(with: .slide))
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(2)
                .transition(AnyTransition.move(edge: .leading).combined(with: .slide))
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .darkGreen
            UITabBar.appearance().unselectedItemTintColor = .lightGreen
        }
    }
}

#Preview {
    TabBar()
}
