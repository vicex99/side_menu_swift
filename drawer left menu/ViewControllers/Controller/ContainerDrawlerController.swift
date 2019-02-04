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
    
    var menuController: DrawerMenuView!
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
            menuController = DrawerMenuView()
            menuController.delegate = self
            
            print("menu controller added...")
        }
    }
    
    func showMenuController(menuOption: MenuOptions?) {
        print("eligiendooooooooo")
        if isExpanded {
            print("show")
            // show
            menuController.show(controller: self)
            
        } else {
            print("hide")
            // hide
            menuController.hide(controller: self, menuOption: menuOption!)
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
        showMenuController(menuOption: menuOption)
        
    }
}
