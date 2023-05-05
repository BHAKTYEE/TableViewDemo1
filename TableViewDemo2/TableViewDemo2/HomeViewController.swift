//
//  HomeViewController.swift
//  TableViewDemo2
//
//  Created by Mac on 03/05/23.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var foodItemsDisplayTableView: UITableView!
    
    var foodItemInfoTableViewCell : FoodItemInfoTableViewCell?
    var foodItems = ["Umpa","Poha","Vada Pav","Samosa","PavBhaji"]
    var foodPrice = [23.3,45.23,23.0,34.2,23.2]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodItemsDisplayTableView.dataSource = self
        foodItemsDisplayTableView.delegate = self
    }
}

extension HomeViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        foodItemInfoTableViewCell = self.foodItemsDisplayTableView.dequeueReusableCell(withIdentifier: "FoodItemInfoTableViewCell", for : indexPath) as? FoodItemInfoTableViewCell
        foodItemInfoTableViewCell?.foodItemTitleLabel.text = foodItems[indexPath.row]
        foodItemInfoTableViewCell?.foodItemPriceLabel.text = "\(foodPrice[indexPath.row])"
        
        return foodItemInfoTableViewCell!
    }
}
extension HomeViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70.0
    }
}
