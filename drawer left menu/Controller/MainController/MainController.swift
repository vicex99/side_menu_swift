//
//  ViewsController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 4/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class MainController: UIViewController {
    
    
    @IBAction func onMoreTapped() {
        print("sidee menuuu")
        
        // observer que indica que ya se puede abrir el navegador
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil )
    }
}
