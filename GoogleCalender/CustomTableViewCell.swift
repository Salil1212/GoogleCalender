//
//  CustomTableViewCell.swift
//  GoogleCalender
//
//  Created by Nickelfox on 31/05/24.
//

import UIKit
protocol MonthTableViewCellDelegate: AnyObject {
    func didTapLabelEvent(dayOfEvent: String, dateOfEvent: String, nameOfEvent: String)
}
class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var eventDay: UILabel!
    
    @IBOutlet weak var eventDate: UILabel!
    
    @IBOutlet weak var eventName: UILabel!
        weak var delegate: MonthTableViewCellDelegate?

    @IBOutlet weak var labelView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()

       
        let gesture = UITapGestureRecognizer(target: self, action: #selector(labelTapped))
        eventName.addGestureRecognizer(gesture)
        eventName.isUserInteractionEnabled = true
        // Initialization code
        // Set the border radius
    labelView.layer.cornerRadius = 20 // Change this value to your desired radius
    labelView.clipsToBounds = true // Ensure the subviews are clipped to the rounded corners
        
        

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        eventName.layer.cornerRadius = 6
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    @objc private func labelTapped(){
        delegate?.didTapLabelEvent(dayOfEvent: eventDay.text ?? "", dateOfEvent: eventDate.text ?? "", nameOfEvent: eventName.text ?? "")
    }
}

