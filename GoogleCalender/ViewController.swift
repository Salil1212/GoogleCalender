//
//  ViewController.swift
//  GoogleCalender
//
//  Created by Nickelfox on 24/05/24.
//
import Foundation
import UIKit
import HorizonCalendar

struct EventData: Codable {
    
    var dayOfEvent: String
    var dateOfEvent: String
    var nameOfEvent: String
}


struct SectionData {
    let headerImage: UIImage
    var rows: [EventData]
}


class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var floatingButton: UIButton!
    let sections: [SectionData] = [
        SectionData(headerImage: UIImage(named: "March")!, rows: [
        EventData(dayOfEvent: "Fri", dateOfEvent: "5", nameOfEvent: "Jamat UI-Vida"),
        EventData(dayOfEvent: "Tue", dateOfEvent: "9", nameOfEvent: "Chaitra Sukhladi"),
        EventData(dayOfEvent: "Wed", dateOfEvent: "8", nameOfEvent: "Birthday of Ravindranath"),
]),
        SectionData(headerImage: UIImage(named: "April")!, rows: [        
        EventData(dayOfEvent: "Fri", dateOfEvent: "5", nameOfEvent: "Jamat UI-Vida"),
        EventData(dayOfEvent: "Tue", dateOfEvent: "9", nameOfEvent: "Chaitra Sukhladi"),
        EventData(dayOfEvent: "Wed", dateOfEvent: "8", nameOfEvent: "Birthday of Ravindranath"),
])]
    var profile = [
        EventData(dayOfEvent: "Fri", dateOfEvent: "5", nameOfEvent: "Jamat UI-Vida"),
        EventData(dayOfEvent: "Tue", dateOfEvent: "9", nameOfEvent: "Chaitra Sukhladi"),
        EventData(dayOfEvent: "Wed", dateOfEvent: "8", nameOfEvent: "Birthday of Ravindranath"),
       ]
    
    
    var selectedEvent: EventData?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableRegister()
        
    }
    
    
    @IBAction func floatingbtnTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let floatingButtonVC = storyboard.instantiateViewController(withIdentifier: "FloatingButtonViewController") as? FloatingButtonViewController {
            self.navigationController?.present(floatingButtonVC, animated: true)
        }

    }
    
    func tableRegister() {
        let navbarNib = UINib(nibName: "NavbarTableViewCell", bundle: nil)
        tableView.register(navbarNib, forCellReuseIdentifier: "NavbarTableViewCell")
        let monthlyNib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(monthlyNib, forCellReuseIdentifier: "CustomTableViewCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
    }
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count+1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return sections[section-1].rows.count
        }
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: "NavbarTableViewCell", for: indexPath) as? NavbarTableViewCell
                cell?.delegate = self
                cell?.selectionStyle = .none
                return cell ?? UITableViewCell()

            }
        default:
            
            let adjustedSection = indexPath.section - 1
            let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
            cell.eventDate.text = sections[adjustedSection].rows[indexPath.row].dateOfEvent
            cell.eventDay.text = sections[adjustedSection].rows[indexPath.row].dayOfEvent
            cell.eventName.text = sections[adjustedSection].rows[indexPath.row].nameOfEvent
            cell.selectionStyle = .none
            cell.delegate = self
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        if section > 0 {
                let adjustedSection = section - 1
                let imageView = UIImageView(image: sections[adjustedSection].headerImage)
                imageView.contentMode = .scaleAspectFill
                imageView.clipsToBounds = true
                return imageView
            } else {
                return nil
            }
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section > 0 {
                return 200 // Adjust the height as needed
            } else {
                return 0 // Set a very small height for the first section to hide its "header"
            }
    }
   
}
extension ViewController: NavbarTableViewCellDelegate {
    func didTapSearchBar() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let searchVC = storyboard.instantiateViewController(withIdentifier: "SearchViewController") as? SearchViewController {
            self.navigationController?.pushViewController(searchVC, animated: true)
        }
    }
    func didTapGoogleAccount() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let googleVC = storyboard.instantiateViewController(withIdentifier:
                                                                "GoogleAccountViewController") as? GoogleAccountViewController {
            self.navigationController?.pushViewController(googleVC, animated: true)
        }
    }
    
    
}
extension ViewController:MonthTableViewCellDelegate {
    
    func didTapLabelEvent(dayOfEvent: String, dateOfEvent: String, nameOfEvent: String) {
          let storyboard = UIStoryboard(name: "Main", bundle: nil)
          if let eventDetailVC = storyboard.instantiateViewController(withIdentifier: "EventDetailController") as? EventDetailController {
              eventDetailVC.eventData = ["dayOfEvent": dayOfEvent, "dateOfEvent": dateOfEvent, "nameOfEvent": nameOfEvent]
              self.navigationController?.pushViewController(eventDetailVC, animated: true)
          }
      }
    
        }


