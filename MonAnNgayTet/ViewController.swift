//
//  ViewController.swift
//  MonAnNgayTet
//
//  Created by techmaster on 2/13/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    var dataManager = DataManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        let monAn = dataManager.data[indexPath.row] as! MonAn
        cell.cellWidth = Double(self.view.frame.size.width)
        cell.addSubviews()
        cell.labelName.text = monAn.name
        cell.imageViewCell.image = monAn.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            dataManager.data.removeObject(at: indexPath.item)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailVC") as! DetailVC
        let monAn = dataManager.data[indexPath.row] as! MonAn
        detailVC.lblName = monAn.name
        detailVC.imgView = monAn.image
        navigationController?.pushViewController(detailVC, animated: true)
    }

}

