//
//  PantModelViewController.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 13/03/23.
//

import UIKit

class PantModelViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func backBtnClicked(){
        
        var PantImg = UIImage(named: "ShoppingApp")
        var pantName = "Thank You !!!!"
        
        NotificationCenter.default.post(name: .PantMam, object: nil,userInfo: ["pant":PantImg,"name":pantName])
        dismiss(animated: true)
        
    }

}
