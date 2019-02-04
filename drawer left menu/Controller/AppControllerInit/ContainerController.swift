//
//  ContainerController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 4/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    @IBOutlet weak var sideMenuContrstrains: NSLayoutConstraint!
    
    var sideMenuOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(toggleSideMenu), name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }
    
    @objc func toggleSideMenu(){
        print("ha escuchado bien")
        if sideMenuOpen {
            sideMenuOpen = false
            sideMenuContrstrains.constant = -240
        } else {
            sideMenuOpen = true
            sideMenuContrstrains.constant = 0
        }
    }
    
    
}
