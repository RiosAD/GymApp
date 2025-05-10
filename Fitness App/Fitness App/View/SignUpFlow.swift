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
    @State private var goHome = false
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationStack {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
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
                .transition(.blurReplace)
                
                //CONTENT NAVIGATION BUTTONS
                VStack {
                    HStack {
                        
                        if currentStep == .createAccount {
                            withAnimation(.snappy) {
                                Button {
                                    withAnimation(.snappy) {
                                        goHome.toggle()
                                    }
                                } label: {
                                    Text("Home")
                                        .font(.custom("Arial-BoldMT", fixedSize: 18))
                                        .padding(.horizontal, 35)
                                        .padding(.vertical, 10)
                                        .foregroundStyle(Color(.midGreen))
                                        .background(Color(.lightWhite))
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .padding(.leading, 30)
                                }
                                .transition(.asymmetric(insertion: .scale(scale: 0.9, anchor: .leading), removal: .scale(scale: 1, anchor: .leading)))
                            }
                            
                        } else {
                            withAnimation(.snappy) {
                                Button {
                                    withAnimation(.snappy) {
                                        backButton()
                                    }
                                } label: {
                                    Text("Back")
                                        .font(.custom("Arial-BoldMT", fixedSize: 18))
                                        .padding(.horizontal, 35)
                                        .padding(.vertical, 10)
                                        .foregroundStyle(Color(.midGreen))
                                        .background(Color(.lightWhite))
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .padding(.leading, 30)
                                }
                            }
                            .transition(.asymmetric(insertion: .scale(scale: 0.9, anchor: .trailing), removal: .scale(scale: 1, anchor: .trailing)))
                            
                        }
                        Spacer()
                        
                        if currentStep == .addName {
                            withAnimation(.snappy) {
                                Button {
                                    
                                } label: {
                                    Text("Finish")
                                        .font(.custom("Arial-BoldMT", fixedSize: 18))
                                        .padding(.horizontal, 35)
                                        .padding(.vertical, 10)
                                        .foregroundStyle(Color(.midGreen))
                                        .background(Color(.lightWhite))
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .padding(.trailing, 30)
                                }
                                .transition(.asymmetric(insertion: .scale(scale: 0.9, anchor: .trailing), removal: .scale(scale: 1, anchor: .trailing)))
                            }
                            
                        } 
                        else {
                            withAnimation(.snappy) {
                                Button {
                                    withAnimation(.snappy) {
                                        nextButton()
                                    }
                                    
                                } label: {
                                    Text("Next")
                                        .font(.custom("Arial-BoldMT", fixedSize: 18))
                                        .padding(.horizontal, 35)
                                        .padding(.vertical, 10)
                                        .foregroundStyle(Color(.midGreen))
                                        .background(Color(.lightWhite))
                                        .clipShape(RoundedRectangle(cornerRadius: 20))
                                        .padding(.trailing, 30)
                                }
                                .transition(.asymmetric(insertion: .scale(scale: 0.9, anchor: .leading), removal: .scale(scale: 1, anchor: .leading)))
                            }
                        }
                    }
                }
                if goHome {
                    StartUp()
                        .transition(.move(edge: .leading))
                }
            }
            .ignoresSafeArea(.keyboard)
        }
    }
    
    private func backButton() {
        if let prevStep = SignUpFlowStep(rawValue: currentStep.rawValue - 1) {
            currentStep = prevStep
        }
    }
    
    private func nextButton() {
        if let nextStep = SignUpFlowStep(rawValue: currentStep.rawValue + 1) {
            currentStep = nextStep
        }
    }
}

#Preview {
    SignUpFlow()
}
