//
//  CheckUpTableViewCell.swift
//  AHistoriadaDiferenca
//
//  Created by mvitoriapereirac on 19/05/22.
//

import UIKit

class CheckUpTableViewCell: UITableViewCell {
    @IBOutlet weak var CheckBotao: UIButton!
    
    @IBOutlet weak var FraseGuia: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        CheckBotao.isHidden = true

        // Configure the view for the selected state
    }

}
