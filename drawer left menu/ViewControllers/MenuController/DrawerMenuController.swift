//
//  DrawerMenuController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 25/1/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class DrawerMenuController: UIViewController {

    // MARK -  viewProperties
    
    @IBOutlet var tableView: UITableView!
    
    // MARK -  internalProperties
    
    internal var items: [String] = ["hola", "que tal", "estas en", "el menu"]
    
    // MARK - Init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableCells()
    }
    
    // MARK - Handlers
    
    func configureTableCells(){
        
    
        let identifier = "ItemDrawlerMenuCell"
        let nib = UINib(nibName: identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: identifier)
    }
}

extension DrawerMenuController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("item ", indexPath, " selected")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MenuItemCell = tableView.dequeueReusableCell(withIdentifier: "ItemDrawlerMenuCell", for: indexPath) as! MenuItemCell
        
        cell.lbl.text = items[indexPath.row]
        return cell
    }
}
