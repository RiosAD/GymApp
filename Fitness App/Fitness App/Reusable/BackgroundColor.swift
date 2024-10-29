//
//  BackgroundColor.swift
//  Fitness App
//
//  Created by Angel Rios on 5/16/24.
//

import SwiftUI

let backgroundGradient = LinearGradient(colors: [Color.darkGreen, Color.midGreen], startPoint: .topLeading, endPoint: .bottomTrailing)

let backgroundRadial = RadialGradient(colors: [.darkGreen, .midGreen, .darkGreen], center: .topLeading, startRadius: 30, endRadius: 700)

let backgroundAlt = RadialGradient(colors: [.midBlue, .darkBlue, .black], center: .bottomTrailing, startRadius: 5, endRadius: 1000)

struct BackgroundColor: View {
    var body: some View {
        ZStack{
         backgroundRadial
                .ignoresSafeArea()
            
            Text("Hello World!")
            
        }
    }
       
}

#Preview {
    BackgroundColor()
}
