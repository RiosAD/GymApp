//
//  AuthModel.swift
//  Fitness App
//
//  Created by Angel Rios on 12/4/24.
//

import Foundation
import FirebaseAuth
import Firebase

class AuthModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init () {
        
    }
    
    func signIn(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(firstName: String, lastName: String, birthDate: Date) async throws {
        
    }
    
    func createUserDetails(feet: String, inches: String, weight: String) async throws {
        
    }
    
    func createUserPwd(withEmail email: String, password: String) async throws {
        
    }
    
    func signOut() {
        
    }
    
    func deleteAccount() {
        
    }
    
    func fetchUser() async {
        
    }
    
}
