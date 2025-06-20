//
//  ProgessBar.swift
//  Fitness App
//
//  Created by Angel Rios on 6/3/25.
//

import SwiftUI

struct ProgessBar: View {
   
    let currentStep: SignUpFlowStep
//    @State var flowStep: [SignUpFlowStep]
//    @Binding var currentProgress: Int
//    var stepCurrent = 3
    
    var body: some View {

        HStack {
            ForEach(SignUpFlowStep.allCases, id: \.self) { flow in
                Circle().stroke(lineWidth: flow.rawValue <= currentStep.rawValue ? 3 :20)
                    .frame(width: 40, height: flow.rawValue <= currentStep.rawValue ? 40 : 15)
                    .foregroundStyle(flow.rawValue < currentStep.rawValue ? .textGreen : .textGreen.opacity(0.2))
                    .overlay{
                        if flow.rawValue < currentStep.rawValue {
                            Image(systemName: "checkmark").font(.title2)
                                .foregroundStyle(.white)
                                .transition(.scale)
                        }
                    }
                
                if flow != SignUpFlowStep.allCases.last! {
                    ZStack(alignment: .leading){
                        Rectangle()
                            .frame(height: 3)
                            .foregroundStyle(.textGreen.opacity(0.2))
                        Rectangle()
                            .frame(height: 3)
                            .frame(maxWidth: flow.rawValue >= currentStep.rawValue ? 0 : .infinity,alignment: .leading)
                            .foregroundStyle(.green)
                        
                    }
                }
            }
        }
        .frame(height: 50)
    }
}

#Preview {
    ProgessBar(currentStep: SignUpFlowStep.allCases.first!)
}
