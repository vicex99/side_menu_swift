//
//  SideMenuController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 4/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class SideMenuController: UIViewController {
    
   
}

extension SideMenuController: UITableViewDelegate, UITableViewDataSource{
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print( indexPath.row )
    }
}

