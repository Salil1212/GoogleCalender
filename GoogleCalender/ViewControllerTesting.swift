//
//  ViewControllerTesting.swift
//  GoogleCalender
//
//  Created by Nickelfox on 04/06/24.
//

import Foundation

import UIKit
class ViewControllerTesting:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
//        createEmployee()
        fetchEmployee()
    }
    func createEmployee()
    {
        let employee = Employee(context: PersistentStorage.shared.context)
        employee.name = "Ravi"
        PersistentStorage.shared.saveContext()
        
    }
    func fetchEmployee(){
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        debugPrint(path[0])
        do {
        
            guard let result = try PersistentStorage.shared.context.fetch(Employee.fetchRequest()) as? [Employee] else {return}
            result.forEach({debugPrint($0.name as Any)})
            
            }
            catch let error{
                debugPrint(error)
            }
        
        }
}
