//
//  TableViewCell.swift
//  DynamicHeight
//
//  Created by Bhumika Patel on 13/07/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labeltext: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
