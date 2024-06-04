//
//  TestingViewController.swift
//  GoogleCalender
//
//  Created by Nickelfox on 31/05/24.
//

import UIKit

class TestingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var testingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let navbarNib = UINib(nibName: "MonthTableViewCell", bundle: nil)
        testingTableView.register(navbarNib, forCellReuseIdentifier: "MonthTableViewCell")
//        testingTableView.register(UINib(nibName: "MonthTableViewCell", bundle: nil), forCellReuseIdentifier: "MonthTableViewCell")
        self.testingTableView.delegate = self
        self.testingTableView.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10 // Example number of rows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MonthTableViewCell", for: indexPath) as! MonthTableViewCell
        // Configure the cell if needed
        return cell
    }
}

