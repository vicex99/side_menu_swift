//
//  DrawerMenuController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 29/1/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit


private let reuseIdntifier = "MenuItemCell"
class DrawerMenuView: UIView {
    
    
    // MARK - Properties
    
    @IBOutlet var tableView: UITableView!
    internal var delegate: HomeControllerDelegate!
    

    
    // MARK - Handlers
    
    func configureTableView(){
        print("configurando tabla......")
        
        let cellNib = UINib(nibName: reuseIdntifier, bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: reuseIdntifier)
        tableView.backgroundColor = .darkGray
        tableView.separatorStyle = .none
        
    }
    
    func show(controller: ContainerDrawlerController){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            controller.centerController.view.frame.origin.x = controller.centerController.view.frame.width - 80
            
        }, completion: nil)
    }
    
    func hide(controller: ContainerDrawlerController, menuOption: MenuOptions){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            controller.centerController.view.frame.origin.x = 0
        }) { (_) in
            guard let menuOptions: MenuOptions = menuOption else { return }
            controller.didSelectMenuOption(menuOption: menuOptions)
        }
    }
}

extension DrawerMenuView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let menuOption = MenuOptions(rawValue: indexPath.row)
        let cell  = tableView.dequeueReusableCell(withIdentifier: reuseIdntifier, for: indexPath) as! MenuItemCell
        
        cell.descriptionLbl.text = menuOption?.descript
        cell.imgIcon.image = menuOption?.img
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOptions(rawValue: indexPath.row)
        self.delegate?.handlemenuToggle(forMenuOption: menuOption)
    }
}
