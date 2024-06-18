//
//  BackgroundColor.swift
//  Fitness App
//
//  Created by Angel Rios on 5/16/24.
//

import SwiftUI

let backgroundGradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .topLeading, endPoint: .bottomTrailing)

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
