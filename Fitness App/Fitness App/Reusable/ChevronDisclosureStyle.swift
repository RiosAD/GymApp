//
//  ChevronDisclosureStyle.swift
//  Fitness App
//
//  Created by Angel Rios on 10/1/24.
//

import SwiftUI

struct ChevronDisclosureStyle: DisclosureGroupStyle {
    @State private var showEffect = false
    
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            Button {
                withAnimation(.smooth(duration: 0.5)) {
                    configuration.isExpanded.toggle()
                    showEffect.toggle()
                }
                
            } label: {
                HStack() {
                    configuration.label
                        
                    Spacer()
                    
                    Image(systemName: "chevron.forward.circle")
                        .foregroundStyle(Color(.lightGreen))
                        .rotationEffect(.degrees(showEffect ? 90 : 0))
                        .font(.system(size: 25))
                        .padding(.trailing, 10)
                }
            }
            if configuration.isExpanded {
                configuration.content
                    .transition(.move(edge: .bottom).combined(with: .blurReplace).combined(with: .scale(0.5)))
            }
        }
       
    }
}
