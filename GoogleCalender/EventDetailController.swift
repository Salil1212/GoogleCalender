//
//  EventDetailController.swift
//  GoogleCalender
//
//  Created by Nickelfox on 30/05/24.
//

import Foundation
import UIKit

class EventDetailController: UIViewController{
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDay: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    var eventData: [String: String]?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        if let eventData = eventData {
            labelName.text = eventData["nameOfEvent"]
            labelDay.text = eventData["dayOfEvent"]
        }


    }
    
    @IBAction func backBtnTapped(_ sender: Any) {
            navigationController?.popToRootViewController(animated: true)
    }
}
