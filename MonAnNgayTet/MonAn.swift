//
//  MonAn.swift
//  MonAnNgayTet
//
//  Created by techmaster on 2/13/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import Foundation
import UIKit

class MonAn {
    var name: String!
    var image: UIImage!
    
    init(name: String, imageName: String) {
        self.name = name
        self.image = UIImage(named: imageName + ".jpg")
    }
}
