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
    
    var menuController: DrawerMenuController!
    var centerController: TabBarController!
    var isExpanded = false
    
    // MARK - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureHomeController()

    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK - Handlers
    
    // aqui iria la navegacion con las vistas de la app, y el toolbar
    func configureHomeController() {
        
        if centerController == nil {
            centerController = TabBarController()
            centerController.delegateNavigation = self
            centerController.configureNavigationController()
        }
        
        view.addSubview((centerController.selectedViewController?.view)!)
        addChildViewController(centerController)
        centerController.didMove(toParentViewController: self)
        
    }
    
    func configureMenuController(){
        // create the menu view only one time
        if menuController == nil {
            // add menuController here
            menuController = DrawerMenuController()
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChildViewController(menuController)
            
            menuController.didMove(toParentViewController: self)
            print("menu controller added...")
        }
    }
    
    func showMenuController(shouldExpand: Bool, menuOption: MenuOptions?) {
        if shouldExpand {
            // show
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
                }, completion: nil)
            
        } else {
            // hide
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }) { (_) in
                guard let menuOptions = menuOption else { return }
                self.didSelectMenuOption(menuOption: menuOptions)
            }
        }
    }
    
    func didSelectMenuOption(menuOption: MenuOptions){
        switch menuOption {
        case .Proflie: print("show profile")
            
        case .Basket: print("show basket")
            
        case .Favourites: print("show favourites")
            
        case .us: print("show us")
            
        }
    }
}

extension ContainerDrawlerController: HomeControllerDelegate {
    func handlemenuToggle(forMenuOption menuOption: MenuOptions?) {
        print("ENTREEEEEEEEEEEE")
        if !isExpanded {
            configureMenuController()
        }
        
        configureHomeController()
        // change isExpanded when recibe the button clicked
        isExpanded = !isExpanded
        
        // show the menu
        showMenuController(shouldExpand: isExpanded, menuOption: menuOption)
        
    }
}
