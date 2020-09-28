//
//  FirebaseCollectionReference.swift
//  IntegralApplication
//
//  Created by sude gonul on 9/28/20.
//  Copyright © 2020 sude gonul. All rights reserved.
//

import Foundation
import FirebaseFirestore

enum FCollectionReference: String {
  
    case Brands
    case Products
    case Basket
}

func FirebaseReference(_ collectionReference: FCollectionReference)
    -> CollectionReference{
        
        return Firestore.firestore().collection(collectionReference.rawValue)
        
}
