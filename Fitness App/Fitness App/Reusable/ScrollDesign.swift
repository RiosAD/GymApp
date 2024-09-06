//
//  ScrollDesign.swift
//  Fitness App
//
//  Created by Angel Rios on 7/24/24.
//

import SwiftUI

struct ScrollDesign: View {
    
    
    
    var title = "Gym"
    var isSelected = false
    
    var body: some View {
//        ForEach(Category.allCases, id: \.self) { category in
        
        Text(title)
            .font(.system(size: 40))
            .font(.title)
            .fontWeight(.semibold)
            .foregroundStyle(Color(isSelected ? .lightWhite : .textGreen))

            }
        }


#Preview {
    ZStack {
        backgroundGradient
            .ignoresSafeArea()
        
        VStack(spacing: 30) {
            
        }
    }
    
}
