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
                            Button {
                                backButton()
                            } label: {
                                Text("Back")
                                    .font(.custom("Arial-BoldMT", fixedSize: 18))
                                    .padding(.horizontal, 35)
                                    .padding(.vertical, 10)
                                    .foregroundStyle(Color(.midGreen))
                                    .background(Color(.lightWhite))
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .padding(.leading, 30)
                                    .disabled(true)
                                    .opacity(0.7)
                            }
                            
                        } else {
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
                        Spacer()
                        
                        if currentStep == .addName {
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
                            
                        } 
                        else {
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
                        }
                    }
                    
                    
                        NavigationLink {
                            StartUp()
                                .navigationBarBackButtonHidden()
                        } label: {
                        Text("Return Home")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(.lightGreen))
                    }
                }
            }
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
