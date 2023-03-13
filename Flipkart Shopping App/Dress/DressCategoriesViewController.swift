//
//  DressCategoriesViewController.swift
//  Flipkart Shopping App
//
//  Created by Akash Belekar on 11/03/23.
//

import UIKit
struct DressData{
    var dressImg:UIImage
    var dressName:String
}

class DressCategoriesViewController: UIViewController {
    
    @IBOutlet weak var dressTbl:UITableView!

    var dressObj = [DressData(dressImg: #imageLiteral(resourceName: "dress4"), dressName: "Red Cheks"),
                   DressData(dressImg: #imageLiteral(resourceName: "dress2"), dressName: "T-Shirt"),
                   DressData(dressImg: #imageLiteral(resourceName: "dress5"), dressName: "White Dress")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dressTbl.delegate = self
        dressTbl.dataSource = self
        
        self.dressTbl.register(UINib(nibName: "DressTVC", bundle: nil), forCellReuseIdentifier: "DressTVC")
        
        DispatchQueue.main.async {
            self.dressTbl.reloadData()
        }
    }  
}
extension DressCategoriesViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dressObj.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DressTVC", for: indexPath) as! DressTVC
        cell.selectionStyle = .none
        cell.dressName.text = dressObj[indexPath.row].dressName
        cell.dressImg.image = dressObj[indexPath.row].dressImg
       
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DressDetailsViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.nameDress = dressObj[indexPath.row].dressName
        vc.imgDress = dressObj[indexPath.row].dressImg
        present(vc, animated: true)
    }
    
    
}
