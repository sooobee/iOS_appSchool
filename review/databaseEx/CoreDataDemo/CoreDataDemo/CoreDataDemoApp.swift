//
//  CoreDataDemoApp.swift
//  CoreDataDemo
//
//  Created by 김수비 on 11/27/23.
//

import SwiftUI

@main
struct CoreDataDemoApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
            
            
            
        }
    }
}
