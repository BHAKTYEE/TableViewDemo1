//
//  ViewController.swift
//  TableViewDemo2
//
//  Created by Mac on 03/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    var students : [String] = ["Bhakti","Bhagyashri","Priyanka","Jagruti","Sakshi"]

    @IBOutlet weak var studentListTableView: UITableView!
    var basicCell : UITableViewCell?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentListTableView.dataSource = self
        studentListTableView.delegate = self
        
    }
}

// ViewController Conformed to UITableViewDataSource

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        basicCell = studentListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        basicCell?.textLabel?.text = "\(students[indexPath.row])" + "\(indexPath.section) -- \(indexPath.row)"
        if(indexPath.row % 2 == 0){
            basicCell?.backgroundColor = .lightGray
            basicCell?.textLabel?.textColor = .black
            basicCell?.textLabel?.textAlignment = .right
        } else{
            basicCell?.backgroundColor = .cyan
            basicCell?.textLabel?.textColor = .brown
            basicCell?.textLabel?.textAlignment = .center
        }
        return basicCell ?? UITableViewCell()
    }
}
// ViewController conformed to UITableViewDelegate


extension ViewController : UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "Student List - ios"
    }
}
