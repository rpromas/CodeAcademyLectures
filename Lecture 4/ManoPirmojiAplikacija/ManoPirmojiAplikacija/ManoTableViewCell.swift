//
//  ManoTableViewCell.swift
//  ManoPirmojiAplikacija
//
//  Created by Romas Petkus on 2022-09-28.
//

import UIKit

class ManoTableViewCell: UITableViewCell {

    @IBOutlet weak var manoSwitchas: UISwitch!
    @IBOutlet weak var zadintuvoLaikoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
