//
//  GoogleAccountViewController.swift
//  GoogleCalender
//
//  Created by Nickelfox on 29/05/24.
//

import Foundation
import UIKit

class GoogleAccountViewController: UIViewController{
    @IBOutlet weak var backButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true

    }
    @IBAction func backBtn(_ sender: Any){
        navigationController?.popToRootViewController(animated: true)
    }
}
