//
//  NewPantViewController.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 13/03/23.
//

import UIKit

class NewPantViewController: UIViewController {
    @IBOutlet weak var newTypePantImg:UIImageView!
    @IBOutlet weak var newTypePantLbl:UILabel!
    
    var newPantImg = UIImage()
    var newPantName = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        newTypePantImg.image = newPantImg
        newTypePantLbl.text = newPantName
        
        NotificationCenter.default.addObserver(self, selector: #selector(pantType(_:)), name: .PantMam, object: nil)

    }
    @objc func pantType(_ notification:Notification){
        let pantData = notification.userInfo as? [String:Any]
        print(pantData)
        var pant = pantData!["pant"] as? UIImage
        var name = pantData!["name"] as? String
        newTypePantImg.image = pant
        newTypePantLbl.text = name
        
    }
    @IBAction func backBtnClicked(){
        dismiss(animated: true)
        
    }
    @IBAction func nextBtnClicke(){
        let vc = PantModelViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }

}
extension Notification.Name{
    static let PantMam = Notification.Name(rawValue: "pant.com")
}
