//
//  MenuItemCell.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 29/1/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class MenuItemCell: UITableViewCell {
    
    // MARK: - Properties
    
    @IBOutlet weak var imgIcon: UIImageView!
    
    @IBOutlet weak var descriptionLbl: UILabel!
    
    // MARK: - init

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
