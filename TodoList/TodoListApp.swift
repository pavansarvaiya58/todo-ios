//
//  TodoListApp.swift
//  TodoList
//
//  Created by Pavan Sarvaiya on 25/09/23.
//

import FirebaseCore
import SwiftUI

@main
struct TodoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
