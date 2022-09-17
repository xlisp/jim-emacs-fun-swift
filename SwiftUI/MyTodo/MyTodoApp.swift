//
//  MyTodoApp.swift
//  MyTodo
//
//  Created by Clojure on 2022/9/14.
//

import SwiftUI

@main
struct MyTodoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
