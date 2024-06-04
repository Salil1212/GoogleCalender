//
//  TaskEvent+CoreDataProperties.swift
//  
//
//  Created by Nickelfox on 31/05/24.
//
//

import Foundation
import CoreData


extension TaskEvent {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<TaskEvent> {
        return NSFetchRequest<TaskEvent>(entityName: "TaskEvent")
    }

    @NSManaged public var title: String?
    @NSManaged public var details: String?

}
