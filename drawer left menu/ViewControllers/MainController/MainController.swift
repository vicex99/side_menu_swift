//
//  MainController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 25/1/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    // MARK - Properties
    
    var delegate: HomeControllerDelegate?
    
    // MARK - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }
    
    // MARK - Methods
    
    func configureNavigationBar() {
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        let menuButton = UIBarButtonItem(image: #imageLiteral(resourceName: "parner").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
        
        navigationItem.title = "home"
        
        navigationItem.leftBarButtonItem = menuButton
    }
    
    @objc func handleMenuToggle(){
        delegate?.handlemenuToggle()
    }

}
