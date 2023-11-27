//
//  ToDoList+CoreDataProperties.swift
//  ToDoList
//
//  Created by 김수비 on 11/23/23.
//
//

import Foundation
import CoreData


extension ToDoListItem {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDoList> {
        return NSFetchRequest<ToDoList>(entityName: "ToDoList")
    }

    @NSManaged public var name: String?
    @NSManaged public var createAt: Date?

}

extension ToDoListItem : Identifiable {

}
