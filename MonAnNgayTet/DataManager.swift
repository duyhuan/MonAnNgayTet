//
//  DataManager.swift
//  MonAnNgayTet
//
//  Created by techmaster on 2/13/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import Foundation

class DataManager {
    
    var data : NSMutableArray!

    static var sharedInstance = DataManager()
    
    private init() {
        let filePath = Bundle.main.path(forResource: "CacMonAn", ofType: "plist")
        let raw = NSDictionary(contentsOfFile: filePath!)
        let temp = NSMutableArray(capacity: (raw?.count)!)
        
        for item in raw! {
            let monAn = MonAn(name: (item.value as AnyObject).value(forKey: "name") as! String, imageName: (item.value as AnyObject).value(forKey: "photo") as! String)
            temp.add(monAn)
        }
        data = NSMutableArray(array: temp)
    }
    
}
