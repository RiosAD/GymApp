//
//  BirthdateSheet.swift
//  Fitness App
//
//  Created by Angel Rios on 1/22/25.
//

import SwiftUI

struct BirthdateSheet: View {
    
    @Environment(\.dismiss) private var dismiss
    @Binding var dateOfBirth: Date
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                backgroundGradient
                    .ignoresSafeArea()
                
                VStack(spacing: 15) {
                    HStack(alignment: .center) {
                        DatePicker("", selection: $dateOfBirth, in: ...Date(), displayedComponents: .date)
                            .datePickerStyle(.wheel)
                    }
                    .padding(.trailing, 50)
                    .colorScheme(.dark)
                    .tint(.midGreen)
                    .fontWeight(.semibold)
                    .font(.system(size: 35))
                    
                    
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Done")
                            .font(.title3)
                            .fontWeight(.bold)
                            .padding(.horizontal, 140)
                            .padding(.vertical, 8)
                            .foregroundStyle(Color(.midGreen))
                            .background(Color(.lightWhite))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                })
                }
             }
        }
    }
}

#Preview {
    
    @Previewable @State var birthDate = Date()
    BirthdateSheet(dateOfBirth: $birthDate)
}
