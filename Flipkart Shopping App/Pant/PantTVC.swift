//
//  PantTVC.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 11/03/23.
//

import UIKit


class PantTVC: UITableViewCell {
    @IBOutlet weak var pantImg:UIImageView!
    @IBOutlet weak var pantName:UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
