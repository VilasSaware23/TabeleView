//
//  myTableCellTableViewCell.swift
//  Vilas_table_view
//
//  Created by MSC_INDIA on 31/05/24.
//

import UIKit

class myTableCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myBMW: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
