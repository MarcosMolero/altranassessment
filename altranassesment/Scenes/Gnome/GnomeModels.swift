//
//  GnomeModels.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright (c) 2018 Marcos Molero. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates

enum GnomeScene {
    struct GetGnome {
        
        struct Request {
            
        }
        
        struct Response {
            let gnome: Gnome
            let gnomes: [Gnome]
        }
        
        struct ViewModel {
            let displayGnome: DisplayGnome
            let displayFriends: [DisplayFriend]
        }
        
        struct DisplayGnome {
            let id: Int
            let name: String
            let thumbnail: String
            let age: Int
            let weight: Double
            let height: Double
            let hairColor: String
            let professions: [String]
            let friends: [String]
        }
        
        struct DisplayFriend {
            let id: Int
            let name: String
            let thumbnail: String
        }
    }
}
