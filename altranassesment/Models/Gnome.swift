//
//  Gnome.swift
//  altranassessment
//
//  Created by Marcos Molero on 23/6/18.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation

struct Gnome {
    let id: Int
    let name: String?
    let thumbnail: String?
    let age: Int?
    let weight: Double?
    let height: Double?
    let hairColor: String?
    let professions: [String]?
    let friends: [String]?
    
    init(id: Int, name: String, thumbnail: String, age: Int, weight: Double, height: Double, hairColor: String, professions: [String], friends: [String]) {
        self.id = id
        self.name = name
        self.thumbnail = thumbnail
        self.age = age
        self.weight = weight
        self.height = height
        self.hairColor = hairColor
        self.professions = professions
        self.friends = friends
    }
}
