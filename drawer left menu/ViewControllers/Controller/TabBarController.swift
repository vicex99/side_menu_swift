//
//  TabBarController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 1/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    var delegateNavigation: HomeControllerDelegate?
    
    internal var newsVC: ViewController = ViewController()
    internal var news2VC: ViewController = ViewController()
    internal var news3VC: ViewController = ViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configureNavigationController() {
        
        newsVC.delegate = delegateNavigation
        news2VC.delegate = delegateNavigation
        news3VC.delegate = delegateNavigation
        
        let newsNavigationController = UINavigationController(rootViewController: newsVC)
        
        let news2NavigationController = UINavigationController(rootViewController: news2VC)
        
        let news3NavigationController = UINavigationController(rootViewController: news3VC)
        
        self.viewControllers = [newsNavigationController, news2NavigationController, news3NavigationController]
    }
}
