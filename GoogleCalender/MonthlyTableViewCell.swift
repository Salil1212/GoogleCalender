////
////  MonthlyTableViewCell.swift
////  GoogleCalender
////
////  Created by Nickelfox on 24/05/24.
////
//
//import UIKit
////protocol MonthlyTableViewCellDelegate: AnyObject {
////    func didTapEventLabel()
////}
//class MonthlyTableViewCell: UITableViewCell {
//
//    @IBOutlet weak var monthlyImage: UIImageView!
////    @IBOutlet weak var dateRange: UILabel!
//    @IBOutlet var eventName: UILabel!
//    @IBOutlet weak var eventDay: UILabel!
//    @IBOutlet weak var eventDate:UILabel!
//    
//    weak var delegate: MonthlyTableViewCellDelegate?
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        let gesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
//        eventName.addGestureRecognizer(gesture)
//        eventName.isUserInteractionEnabled = true
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//    
//        // Configure the view for the selected state
//    }
//    @objc private func labelTapped(){
//
//        delegate?.didTapEventLabel()
//    }
//}
