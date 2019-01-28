//
//  MenuOptions.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 25/1/19.
//  Copyright © 2019 victorSL. All rights reserved.
//
import UIKit

enum MenuOptions: Int {
    
    case Proflie
    case Basket
    case Favourites
    case us
    
    var descript: String {
        switch self {
            case .Proflie: return "profile"
            
            case .Basket: return "basket"
            
            case .Favourites: return "favorites"
            
            case .us: return "us"
        }
    }
    
    var img: UIImage {
        switch self {
        case .Proflie: return UIImage(named: "user") ?? UIImage()
            
        case .Basket: return UIImage(named: "basket") ?? UIImage()
            
        case .Favourites: return UIImage(named: "favourites") ?? UIImage()
            
        case .us: return UIImage(named: "user") ?? UIImage()
        }
    }
}
