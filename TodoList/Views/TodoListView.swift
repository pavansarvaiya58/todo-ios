//
//  TodoListItemsView.swift
//  TodoList
//
//  Created by Pavan Sarvaiya on 25/09/23.
//

import SwiftUI

struct TodoListView: View {
    
    @StateObject var viewModel = TodoListViewViewModal()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Todo List")
            .toolbar {
                Button {
                    // Action
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView(userId: "")
    }
}
