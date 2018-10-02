//
//  Constants.swift
//  altranassessment
//
//  Created by Marcos Molero on 23/6/18.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation

struct Constants {
    
    struct API {
        static let BASE_URL = "https://raw.githubusercontent.com/rrafols/mobile_test/master/"
        
        struct Gnomes {
            static let url = Constants.API.BASE_URL + "data.json"
        }
    }
}
