//
//  TableViewCell.swift
//  MonAnNgayTet
//
//  Created by techmaster on 2/13/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    var labelName: UILabel!
    var imageViewCell: UIImageView!
    var cellWidth = 400.0

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func addSubviews() {
        if imageViewCell == nil {
            imageViewCell = UIImageView(frame: CGRect(x: 0.0, y: 0.0, width: cellWidth, height: 200.0))
            contentView.addSubview(imageViewCell)
        }
        
        if labelName == nil {
            labelName = UILabel(frame: CGRect(x: 0.0, y: 0.0, width: cellWidth, height: 50.0))
            labelName.textAlignment = .left
            labelName.textColor = UIColor.red
            labelName.font = UIFont.boldSystemFont(ofSize: 16.0)
            contentView.addSubview(labelName)
        }
    }

}
