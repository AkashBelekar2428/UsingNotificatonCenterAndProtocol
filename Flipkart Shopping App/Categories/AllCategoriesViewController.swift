//
//  AllCategoriesViewController.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 11/03/23.
//

import UIKit

class AllCategoriesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func dressBtnClicked(_ sender:UIButton){
        let vc = DressCategoriesViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
    @IBAction func pantBtnClicked(_ sender:UIButton){
        let vc = PantCategoriesViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
        
    }
}
