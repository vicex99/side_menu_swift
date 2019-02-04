//
//  TabBarNavegation.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 4/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class TabBarNevigation: UITabBarController {
    
    
    internal var newsVC: MainController = MainController()
    internal var news2VC: MainController = MainController()
    internal var news3VC: MainController = MainController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configureNavigationController() {
        
        let newsNavigationController = UINavigationController(rootViewController: newsVC)
        
        let news2NavigationController = UINavigationController(rootViewController: news2VC)
        
        let news3NavigationController = UINavigationController(rootViewController: news3VC)
        
        self.viewControllers = [newsNavigationController, news2NavigationController, news3NavigationController]
    }
}
