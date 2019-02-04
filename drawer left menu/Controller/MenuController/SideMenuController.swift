//
//  SideMenuController.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 4/2/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class SideMenuController: UIViewController {
    internal var arrItems = ["cesta","settings","favourites"]
    
    @IBOutlet var tableView : UITableView!
    
    override func viewDidLoad() {
        registerCell()
    }
    
    // set the cell of the table
    internal func registerCell(){
        let identifier = "SideMenuCell"
        let nib = UINib(nibName: identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: identifier)
    }
   
}

extension SideMenuController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SideMenuCell = tableView.dequeueReusableCell(withIdentifier: "SideMenuCell", for: indexPath) as! SideMenuCell
        
        cell.lblTitle.text = arrItems[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

