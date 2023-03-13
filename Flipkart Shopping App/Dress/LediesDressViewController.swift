//
//  LediesDressViewController.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 11/03/23.
//

import UIKit

protocol dressDataDelegate{
    func passData(name:String,img:UIImage)
}


class LediesDressViewController: UIViewController {
    var delegate:dressDataDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func backBtn(){
        delegate?.passData(name: "Success Bro !!", img: UIImage(named: "\("Shopping")")!)
        dismiss(animated: true)
    }
    @IBAction func NextBtn(){
       
        
        
    }
}
