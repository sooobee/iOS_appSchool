//
//  Persistence.swift
//  CoreDataDemo
//
//  Created by 김수비 on 11/27/23.
//

import Foundation
import CoreData

struct PersistenceController {
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    init(){
        container = NSPersistentContainer(name: "Products")
        container.loadPersistentStores {(storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Container load failed: \(error)")
            }
        }
    }
}
