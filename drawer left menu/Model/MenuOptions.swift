//
//  MenuOptions.swift
//  drawer left menu
//
//  Created by VICTOR ALVAREZ LANTARON on 25/1/19.
//  Copyright © 2019 victorSL. All rights reserved.
//

enum MenuOptions: Int {
    case Proflie
    case Basket
    case Favourites
    case us
    
    var descript: String {
        switch self {
            case .Proflie: return "profile"
            
            case .Basket: return "basket"
            
            case .Favourites: return "favourites"
            
            case .us: return "us"
        }
    }
    
//    var img: UIImage {
//        switch self {
//        case .Proflie: return "profile"
//            
//        case .Basket: return "basket"
//            
//        case .Favourites: return "favourites"
//            
//        case .us: return "us"
//        }
//    }
}
