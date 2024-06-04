//
//  NavbarTableViewCell.swift
//  GoogleCalender
//
//  Created by Nickelfox on 24/05/24.
//

import UIKit
protocol NavbarTableViewCellDelegate: AnyObject {
    func didTapSearchBar()
    func didTapGoogleAccount()
}
class NavbarTableViewCell: UITableViewCell {
    @IBOutlet weak var menuBar: UIButton!
    
    @IBOutlet weak var dropDownMenu: UIButton!
    @IBOutlet weak var searchBar: UIButton!
    @IBOutlet weak var calenderDate: UIButton!
    @IBOutlet weak var googleAccount: UIButton!
    
    @IBOutlet weak var labelView: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    weak var delegate: NavbarTableViewCellDelegate?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        searchBar.addTarget(self, action: #selector(searchBarTapped), for: .touchUpInside)

        // Initialization code
        googleAccount.addTarget(self, action: #selector(googleBarTapped), for: .touchUpInside)
        setDateLabel();
       
        labelView.layer.borderWidth = 3
        
        
        
    }
    
    @objc func searchBarTapped() {
        delegate?.didTapSearchBar()
    }
    @objc func googleBarTapped(){
        delegate?.didTapGoogleAccount()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    private func setDateLabel() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "d" // Set the format to show only the day of the month
        let currentDate = Date()
        dateLabel.text = dateFormatter.string(from: currentDate)
}

    
    
}
