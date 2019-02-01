//
//  ViewController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 1/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var delegate: HomeControllerDelegate?
    @IBOutlet var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationBar()
    }
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "parner").withRenderingMode(.alwaysOriginal), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
    @objc func handleMenuToggle(){
        print("toggle menu....")
        delegate?.handlemenuToggle(forMenuOption: nil)
    }
}
