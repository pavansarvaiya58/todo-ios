//
//  LoginView.swift
//  TodoList
//
//  Created by Pavan Sarvaiya on 25/09/23.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModal = LoginViewViewModal()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Todo List", subtitle: "Get things done", angle: 15, backgroundColor: .pink)
                
                // Login Form
                Form {
                    
                    if !viewModal.errorMessage.isEmpty {
                        Text(viewModal.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModal.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    SecureField("Password", text: $viewModal.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Login", backgroundColor: .blue) {
                        // Attempt Login
                        viewModal.login()
                    }
                }
                .offset(y: -50)
                
                
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination: RegisterView())
                }
                .padding(.bottom, 150)
                
                
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
