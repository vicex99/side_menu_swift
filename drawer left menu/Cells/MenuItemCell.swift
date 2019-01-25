//
//  MenuItemCell.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 25/1/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

import UIKit

class MenuItemCell: UITableViewCell {

    // MARK: - Properties
    
    let imgIcon: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.backgroundColor = .blue
        return iv
    }()
    
    let descriptionLbl: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.systemFont(ofSize: 16)
        lbl.text = "hola soy la celda"
        return lbl
    }()
    
     // MARK: - Init
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .darkGray
        
        addSubview(imgIcon)
        imgIcon.translatesAutoresizingMaskIntoConstraints = false
        imgIcon.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imgIcon.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        imgIcon.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        imgIcon.heightAnchor.constraint(equalToConstant: 24).isActive = true
        imgIcon.widthAnchor.constraint(equalToConstant: 24).isActive = true
        
        
        addSubview(descriptionLbl)
        descriptionLbl.translatesAutoresizingMaskIntoConstraints = false
        descriptionLbl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        descriptionLbl.leftAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
     // MARK: - Handlers

}

