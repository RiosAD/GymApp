//
//  SignUpFlow.swift
//  Fitness App
//
//  Created by Angel Rios on 2/21/25.
//

import SwiftUI

enum SignUpFlowStep: Int, CaseIterable {
case createAccount
case addName
case addDetails
}

struct SignUpFlow: View {
    @State private var currentStep: SignUpFlowStep = .createAccount
    
    var body: some View {
        Group {
            switch currentStep {
            case .createAccount:
                CreateLogInView()
            case .addName:
                NameView()
            case .addDetails:
                DetailsView()
            }
        }
        .transition(.slide)
        .animation(.easeInOut, value: currentStep)
    }
}

#Preview {
    SignUpFlow()
}
