////
////  HeaderDataFooter.swift
////  GoogleCalender
////
////  Created by Nickelfox on 31/05/24.
////
//
//import UIKit
//
////struct SectionData {
////    let headerImage: UIImage
////    let rows: [String]
////}
//
//class HeaderDataFooter: UIViewController, UITableViewDelegate, UITableViewDataSource {
//    
//    
//    
//    @IBOutlet weak var headerFooterTableView: UITableView!
//    let sections: [SectionData] = [
//        SectionData(headerImage: UIImage(named: "March")!, rows: ["Row 1", "Row 2"]),
//        SectionData(headerImage: UIImage(named: "April")!, rows: ["Row 3", "Row 4", "Row 5"])
////         Add more sections as needed
//    ]
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        headerFooterTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
//        
//        headerFooterTableView.delegate = self
//        headerFooterTableView.dataSource = self
//    }
//    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return sections.count
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return sections[section].rows.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
//        cell.customLabel.text = sections[indexPath.section].rows[indexPath.row]
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let imageView = UIImageView(image: sections[section].headerImage)
//        imageView.contentMode = .scaleAspectFill
//        imageView.clipsToBounds = true
//        return imageView
//    }
//    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 200 // Adjust the height as needed
//    }
//}
//
