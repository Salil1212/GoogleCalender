//
//  PersistentStorage.swift
//  GoogleCalender
//
//  Created by Nickelfox on 04/06/24.
//

import Foundation
import CoreData

final class PersistentStorage
{
    private init(){}
    static let shared = PersistentStorage()
    // MARK: - Core Data stack
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "TaskList")
        container.loadPersistentStores(completionHandler: {
            (storeDescription,error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error),\(error.userInfo)")
            }
        })
        return container
    }()
    
    lazy var context = persistentContainer.viewContext
    //MARK : - Core Data Saving support
    
    func saveContext() {
       
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror),\(nserror.userInfo)")
            }
        }
    }
}
