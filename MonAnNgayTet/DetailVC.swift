//
//  DetailVC.swift
//  MonAnNgayTet
//
//  Created by techmaster on 2/13/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var lblName: String!
    var imgView: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        labelName.text = lblName
        imageView.image = imgView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
