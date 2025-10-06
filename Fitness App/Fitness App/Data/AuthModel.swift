//
//  AuthModel.swift
//  Fitness App
//
//  Created by Angel Rios on 12/4/24.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth
import Firebase

@MainActor
class AuthModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: UserData?
    
    init () {
        self.userSession = Auth.auth().currentUser
        
        Task {
            await fetchUser()
        }
    }
    
    func signIn(withEmail email: String, password: String) async throws {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
            await fetchUser()
        }
        catch {
            print("DEBUG: Failed to sign in. ERROR:\(error.localizedDescription)")
        }
    }
    
    func createUser(withEmail email: String, password: String, firstName: String, lastName: String, birthDate: Date, feet: String, inches: String, weight: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            let user = UserData()
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(result.user.uid).setData(encodedUser)
            await fetchUser()
        } catch {
            print("DEBUG: Failed to create user. ERROR:\(error.localizedDescription)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut() // Signs out user on backend
            self.userSession = nil // Wipes user session
            self.currentUser = nil // Wipes user data
        }
        catch {
            print("DEBUG: Failed to sign out user. ERROR:\(error.localizedDescription)")
        }
    }
    
    func deleteAccount() {
        do {
            let db = Firestore.firestore()
            db.collection("user").document(Auth.auth().currentUser!.uid).delete() { error in
                if error == nil {
                    self.userSession = nil
                    self.currentUser = nil
                }
            }
           
        }
    }
    
    func fetchUser() async {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        guard let snapshot = try? await Firestore.firestore().collection("users").document(uid).getDocument() else { return }
        self.currentUser = try? snapshot.data(as: UserData.self)
    }
    
}
