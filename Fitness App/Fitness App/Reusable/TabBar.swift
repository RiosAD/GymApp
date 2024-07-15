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
                }
            
            NutritionView()
                .tabItem {
                    Image(systemName: "carrot")
                }
            
            HistoryView()
                .tabItem {
                    Image(systemName: "clock.arrow.circlepath")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = .darkGreen
            UITabBar.appearance().unselectedItemTintColor = .lightGreen
        }
        .tint(.lightWhite)
    }
}

#Preview {
    TabBar()
}
