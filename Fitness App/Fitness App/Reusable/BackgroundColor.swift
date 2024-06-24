//
//  BackgroundColor.swift
//  Fitness App
//
//  Created by Angel Rios on 5/16/24.
//

import SwiftUI

let backgroundGradient = LinearGradient(colors: [Color.darkGreen, Color.midGreen], startPoint: .topLeading, endPoint: .bottomTrailing)

let backgroundRadial = RadialGradient(colors: [.lightGreen, .midGreen, .darkGreen], center: .topLeading, startRadius: 30, endRadius: 700)

struct BackgroundColor: View {
    var body: some View {
        ZStack{
         backgroundGradient
                .ignoresSafeArea()
            
            Text("Hello World!")
            
        }
    }
       
}

#Preview {
    BackgroundColor()
}
