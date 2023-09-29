//
//  MainVeiwViewModal.swift
//  TodoList
//
//  Created by Pavan Sarvaiya on 25/09/23.
//

import FirebaseAuth
import Foundation

class MainViewViewModal: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        Auth.auth().currentUser != nil
    }
}
