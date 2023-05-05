//
//  FoodItemInfoTableViewCell.swift
//  TableViewDemo2
//
//  Created by Mac on 03/05/23.
//

import UIKit

class FoodItemInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var foodItemTitleLabel: UILabel!
    @IBOutlet weak var foodItemPriceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
