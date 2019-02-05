//
//  TabBarNavegation.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 4/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class TabBarNevigation: UITabBarController {
    
    var firstTabNavigationController : UINavigationController!
    var secondTabNavigationControoller : UINavigationController!
    var thirdTabNavigationController : UINavigationController!
    var fourthTabNavigationControoller : UINavigationController!
    var fifthTabNavigationController : UINavigationController!
    
    
    @IBAction func onMoreTapped() {
        print("sidee menuuu")
        
        // observer que indica que ya se puede abrir el navegador
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil )
    }

    override func viewDidLoad() {
        
        firstTabNavigationController = UINavigationController.init(rootViewController: AppViewController())
        secondTabNavigationControoller = UINavigationController.init(rootViewController: AppViewController())
        thirdTabNavigationController = UINavigationController.init(rootViewController: AppViewController())
        fourthTabNavigationControoller = UINavigationController.init(rootViewController: AppViewController())
        fifthTabNavigationController = UINavigationController.init(rootViewController: AppViewController())
        
        self.viewControllers = [firstTabNavigationController, secondTabNavigationControoller, thirdTabNavigationController, fourthTabNavigationControoller, fifthTabNavigationController]
        
        
        let item1 = UITabBarItem(title: "Home", image: UIImage(named: "parner"), tag: 0)
        let item2 = UITabBarItem(title: "Contest", image:  UIImage(named: "parner"), tag: 1)
        let item3 = UITabBarItem(title: "Post a Picture", image:  UIImage(named: "parner"), tag: 2)
        let item4 = UITabBarItem(title: "Prizes", image:  UIImage(named: "parner"), tag: 3)
        let item5 = UITabBarItem(title: "Profile", image:  UIImage(named: "parner"), tag: 4)
        
        firstTabNavigationController.tabBarItem = item1
        secondTabNavigationControoller.tabBarItem = item2
        thirdTabNavigationController.tabBarItem = item3
        fourthTabNavigationControoller.tabBarItem = item4
        fifthTabNavigationController.tabBarItem = item5
        

    }
}
