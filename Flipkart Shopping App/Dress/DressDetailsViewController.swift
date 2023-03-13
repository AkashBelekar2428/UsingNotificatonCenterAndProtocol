//
//  DressDetailsViewController.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 11/03/23.
//

import UIKit

class DressDetailsViewController: UIViewController,dressDataDelegate {
  
    @IBOutlet weak var dressImg:UIImageView!
    @IBOutlet weak var dressNameLbl:UILabel!
    
    var imgDress = UIImage()
    var nameDress = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        dressImg.image = imgDress
        dressNameLbl.text = nameDress
        

        // Do any additional setup after loading the view.
    }
    func passData(name: String, img: UIImage) {
        dressImg.image = img
        dressNameLbl.text = name
    }
    
    

    @IBAction func backBtnClicked(){
        dismiss(animated: true)
    }
    @IBAction func showBtnClicked(){
        let vc = LediesDressViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate = self
        present(vc, animated: true)
        
    }
}
