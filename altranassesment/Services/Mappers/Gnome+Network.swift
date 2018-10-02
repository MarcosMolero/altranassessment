//
//  Gnome+Network.swift
//  altranassessment
//
//  Created by Marcos Molero on 23/6/18.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation

extension Gnome {
    
    init?(fromDictionary dictionary: Dictionary<String, Any>) {
        
        guard let id = dictionary["id"] as? Int else {
            return nil
        }
        
        self.id = id
        self.name = dictionary["name"] as? String
        self.thumbnail = dictionary["thumbnail"] as? String
        self.age = dictionary["age"] as? Int
        self.weight = dictionary["weight"] as? Double
        self.height = dictionary["height"] as? Double
        self.hairColor = dictionary["hair_color"] as? String
        self.professions = dictionary["professions"] as? [String]
        self.friends = dictionary["friends"] as? [String]
    }
    
}
