//
//  MonthTableViewCell.swift
//  GoogleCalender
//
//  Created by Nickelfox on 31/05/24.
//
import UIKit

class MonthTableViewCell: UITableViewCell, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var childTableView: UITableView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupChildTableView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    private func setupChildTableView() {
        
        
         let navbarNib = UINib(nibName: "ChildTableViewCell", bundle: nil)
         childTableView.register(navbarNib, forCellReuseIdentifier: "ChildTableViewCell")
        childTableView.dataSource = self
        childTableView.delegate = self
    }
    
    // DataSource and Delegate methods for childTableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // Example number of child rows
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChildTableViewCell", for: indexPath) as! ChildTableViewCell
        // Configure the cell, for example, set label text
        cell.label.text = "Child Row \(indexPath.row)"
        return cell
    }
}
