//
//  Employee+CoreDataProperties.swift
//  
//
//  Created by Nickelfox on 04/06/24.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var name: String?
    

}
