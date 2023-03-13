//
//  DressTVCTableViewCell.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 11/03/23.
//

import UIKit

class DressTVC: UITableViewCell {
    @IBOutlet weak var dressImg:UIImageView!
    @IBOutlet weak var dressName:UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    
}
