//
//  NutritionView.swift
//  Fitness App
//
//  Created by Angel Rios on 7/15/24.
//

import SwiftUI

struct NutritionView: View {
    var body: some View {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack {
                    Text("Nutrition")
                        .font(.system(size: 30))
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightWhite))
                }
            }
    }
}

#Preview {
    NutritionView()
}
