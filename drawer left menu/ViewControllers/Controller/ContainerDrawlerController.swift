//
//  ContainerDrawlerController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 25/1/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class ContainerDrawlerController: UIViewController {

    // MARK - Properties
    
    var menuController: UIViewController!
    var centerController: UIViewController!
    var isExpanded = false
    
    // MARK - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHomeController()

    }
    
    
    // MARK - Handlers
    
    // aqui iria la navegacion con las vistas de la app, y el toolbar
    func configureHomeController() {
        
        let mainController = MainController()
        centerController = UINavigationController(rootViewController: mainController)
        mainController.delegate = self
        
        
        view.addSubview(centerController.view)
        addChildViewController(centerController)
        centerController.didMove(toParentViewController: self)
        
    }
    
    func configureMenuController(){
        // create the menu view only one time
        if menuController == nil {
            // add menuController here
            menuController = MainController()
            view.insertSubview(menuController.view, at: 0)
            addChildViewController(menuController)
            
            menuController.didMove(toParentViewController: self)
            print("menu controller added...")
        }
    }
    
    func showMenuController(shouldExpand: Bool) {
        if shouldExpand {
            // show
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
                }, completion: nil)
            
        } else {
            // hide
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }, completion: nil)
            
        }
    }
}

extension ContainerDrawlerController: HomeControllerDelegate {
    func handlemenuToggle() {
        
        if !isExpanded {
            configureMenuController()
        }
        
        // change isExpanded when recibe the button clicked
        isExpanded = !isExpanded
        
        // show the menu
        showMenuController(shouldExpand: isExpanded)
    }
    
    
}
