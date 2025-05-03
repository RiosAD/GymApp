//
//  SignUpFlow.swift
//  Fitness App
//
//  Created by Angel Rios on 2/21/25.
//

import SwiftUI

enum SignUpFlowStep: Int, CaseIterable {
case createAccount
case addDetails
case addName
}

struct SignUpFlow: View {
    @State private var currentStep: SignUpFlowStep = .createAccount
    
    var body: some View {
        Group {
            switch currentStep {
                
            case .createAccount:
                CreateLogInView()
            case .addDetails:
                DetailsView()
            case .addName:
                NameView()
            }
        }
        .transition(.slide)
        .animation(.easeInOut, value: currentStep)
    }
}

#Preview {
    SignUpFlow()
}
