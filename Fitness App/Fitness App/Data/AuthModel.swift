//
//  AuthModel.swift
//  Fitness App
//
//  Created by Angel Rios on 12/4/24.
//

import Foundation
import FirebaseAuth
import Firebase

@MainActor
class AuthModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init () {
        self.userSession = Auth.auth().currentUser
    }
    
    func signIn(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(withEmail email: String, password: String) async throws {
        
    }
    
    func addUserName(firstName: String, lastName: String, birthDate: Date) async throws {
        
    }
    
    func addUserDetails(feet: String, inches: String, weight: String) async throws {
        
    }
    
    func signOut() {
        
    }
    
    func deleteAccount() {
        
    }
    
    func fetchUser() async {
        
    }
    
}
