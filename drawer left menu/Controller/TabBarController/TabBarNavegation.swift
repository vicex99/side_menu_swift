//
//  TabBarNavegation.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 4/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class TabBarNevigation: UITabBarController {
    
    
    internal var newsVC: AppViewController = AppViewController()
    internal var news2VC: AppViewController = AppViewController()
    internal var news3VC: AppViewController = AppViewController()
    
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
