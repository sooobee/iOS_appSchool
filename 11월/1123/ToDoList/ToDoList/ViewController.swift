//
//  ViewController.swift
//  ToDoList
//
//  Created by 김수비 on 11/23/23.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func getAllItems() {
        
        do {
            let items = try context.fetch(ToDoListItem.fetchRequest())
        }
        catch {
            // error
        }
         
    }
    
    func createItem(name: String) {
        let newItem = ToDoListItem(context: context)
        newItem.name = name
        newItem.createdAt = Date()
    }
    
    func deleteItem(item: ToDoListItem) {
        
    }
    
    func updateItem(item: ToDoListItem) {
        
    }

}

