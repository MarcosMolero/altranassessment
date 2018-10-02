//
//  NetworkAssembly.swift
//  altranassessment
//
//  Created by Marcos Molero on 23/6/18.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation
import Swinject

class NetworkAssembly: Assembly {
    var container:Container!
    
    func assemble(container: Container) {
        self.container = container
        registerStores()
    }
    
    func registerStores() {
        registerGnomeStore()
    }
    
    func registerGnomeStore() {
        container.register(GnomeStore.self) { container in
            let gnomeAPIStore = GnomeAPIStore()
            return gnomeAPIStore
        }
    }
    
}
