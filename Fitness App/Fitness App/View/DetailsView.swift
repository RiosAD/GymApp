//
//  DetailsView.swift
//  Fitness App
//
//  Created by Angel Rios on 6/20/24.
//

import SwiftUI

struct DetailsView: View {
    
    
    
    
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 15) {
                    
                    Text("Personal Details")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.lightWhite))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10)
                    HStack{
                        
                    }
                }
            }
            .modifier(Toolbar())
        }
        
    }
}

#Preview {
    DetailsView()
}
