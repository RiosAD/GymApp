//
//  Root.swift
//  Fitness App
//
//  Created by Angel Rios on 1/14/25.
//

import SwiftUI

struct Root: View {
    @EnvironmentObject var viewModel: AuthModel
    
    var body: some View {
//        Group {
//            if viewModel.userSession != nil {
//                StartUp()
//            } else {
//                TabBar()
//            }
//        }
        
        StartUp()
    }
}

#Preview {
    Root()
}
