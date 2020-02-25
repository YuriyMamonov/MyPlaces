//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Юрий Мамонов on 22.02.2020.
//  Copyright © 2020 Yuriy Mamonov. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_place: Place) {
        
        try! realm.write {
            
            realm.add(_place)
        }
        
    }
 
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
            
        }
        
    }
    
}
