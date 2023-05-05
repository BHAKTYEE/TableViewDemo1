//
//  DashBoardViewController.swift
//  TableViewDemo2
//
//  Created by Mac on 03/05/23.
//

import UIKit

class DashBoardViewController: UIViewController {
    @IBOutlet weak var productTableView: UITableView!
    
    
    var productNames = ["Laptop","KeyBoard","Phone","Mouse","Charger"]
    var productPrice = [45000.00,1000.00,3403.22,1000.00]
    var productDescription = ["HP Laptop","ThinkPad","iPhone","HP Mouse","Sony Charger"]
    var productTableViewCell : ProductTableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
registerWithProductTableViewCell()
        productTableView.delegate = self
        productTableView.dataSource = self
        
    }
    
// registration with xib
    
    func registerWithProductTableViewCell(){
        let uiNib = UINib(nibName: "ProductTableViewCell", bundle: nil)
        self.productTableView.register(uiNib, forCellReuseIdentifier: "ProductTableViewCell")
    }
}

extension DashBoardViewController : UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productPrice.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        productTableViewCell = self.productTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for : indexPath) as? ProductTableViewCell
        
        productTableViewCell?.productTitleLabel.text = productNames[indexPath.row]
        productTableViewCell?.productPriceLabel.text = "\(productPrice[indexPath.row])"
        productTableViewCell?.productDescriptionLabel.text = productDescription[indexPath.row]
        return productTableViewCell ?? UITableViewCell()
    }
}

extension DashBoardViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160.0
    }
}
