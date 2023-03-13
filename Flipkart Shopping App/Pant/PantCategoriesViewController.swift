//
//  PantCategoriesViewController.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 11/03/23.
//

import UIKit
struct PantData{
    var pantImg:UIImage?
    var pantName:String?
}
class PantCategoriesViewController: UIViewController {
    @IBOutlet weak var pantTbl:UITableView!
    
    var pantModel:[PantData] = []
    
    let pantImageArray = [#imageLiteral(resourceName: "pant3"), #imageLiteral(resourceName: "pant4"), #imageLiteral(resourceName: "pant1"), #imageLiteral(resourceName: "pant6"), #imageLiteral(resourceName: "pant2")]
    let pantNameArray:[String] = ["Dark-Gray","Blue","Brown","Black","Gray"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pantTbl.delegate = self
        pantTbl.dataSource = self
        self.pantTbl.register(UINib(nibName: "PantTVC", bundle: nil), forCellReuseIdentifier: "PantTVC")
        
        for i in pantImageArray.indices{
            var data = PantData()
            data.pantName = pantNameArray[i]
            data.pantImg = pantImageArray[i % pantImageArray.count] as? UIImage
            pantModel.append(data)
            pantTbl.reloadData()
            
        }
    }
}
extension PantCategoriesViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pantModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PantTVC", for: indexPath) as! PantTVC
        cell.selectionStyle = .none
        cell.pantName.text = pantModel[indexPath.row].pantName
        if let img = pantModel[indexPath.row].pantImg{
            cell.pantImg.image = img as? UIImage
        }
           return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = NewPantViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.newPantName = pantModel[indexPath.row].pantName ?? ""
        vc.newPantImg = pantModel[indexPath.row].pantImg ?? #imageLiteral(resourceName: "pant1")
        present(vc, animated: true)
    }
    
    
}
