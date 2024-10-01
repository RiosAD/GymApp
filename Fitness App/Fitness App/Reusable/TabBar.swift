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
            
            NutritionView()
                .tabItem {
                    Image(systemName: "fork.knife.circle")
                    Text("Nutrition")
                }
                .tag(1)
            
            HistoryView()
                .tabItem {
                    Image(systemName: "clock.arrow.circlepath")
                    Text("History")
                }
                .tag(2)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Profile")
                }
                .tag(3)
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
