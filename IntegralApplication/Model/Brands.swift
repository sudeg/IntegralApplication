//
//  Brands.swift
//  IntegralApplication
//
//  Created by sude gonul on 9/28/20.
//  Copyright © 2020 sude gonul. All rights reserved.
//

import Foundation
import UIKit

class Brands {
    
    
    var id: String
    var name: String
    var image: UIImage?
    var imageName: String?
    
    init(_name: String, _imageName: String){
        
        id = ""
        name = _name
        imageName = _imageName
        image = UIImage(named: _imageName)
        
    }
    
    init(_dictionary: NSDictionary){
        
        id = _dictionary[kOBJECTID] as! String
        name = _dictionary[kNAME] as! String
        image = UIImage(named: _dictionary[kIMAGENAME] as? String ?? "")
        
    }
    
    
    
    //Save brands function
    
    func saveBrandsToFirebase(_ brands: Brands){
        
        let id = UUID().uuidString
        brands.id = id
        
        FirebaseReference(.Brands).document(id).setData(brandsDictionaryFrom(brands)
            as! [String : Any])
        
        
    }
    
    // Helpers
    
    func brandsDictionaryFrom(_ brands: Brands) -> NSDictionary {
        
        return NSDictionary(objects: [brands.id, brands.name, brands.imageName],
        forKeys: [kOBJECTID as NSCopying, kNAME as NSCopying, kIMAGENAME as NSCopying])
        
    }
    
    
    
    
    
    
}
