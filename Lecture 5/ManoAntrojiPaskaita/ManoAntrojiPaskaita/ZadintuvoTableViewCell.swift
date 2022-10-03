//
//  ZadintuvoTableViewCell.swift
//  ManoAntrojiPaskaita
//
//  Created by Romas Petkus on 2022-10-03.
//

import UIKit

class ZadintuvoTableViewCell: UITableViewCell {
    @IBOutlet weak var laikasLabel: UILabel!
    @IBOutlet weak var arIjungtasSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
