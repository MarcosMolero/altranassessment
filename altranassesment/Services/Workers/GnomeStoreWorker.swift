//
//  GnomeStoreWorker.swift
//  altranassessment
//
//  Created by Marcos Molero on 28/09/2018.
//  Copyright (c) 2018 Marcos Molero. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates

class GnomeStoreWorker {
    // MARK: Business Logic
    
    let gnomeStore: GnomeStore
    
    init(store: GnomeStore) {
        self.gnomeStore = store
    }
    
    func getGnomes(completion: @escaping GnomeStoreGetGnomesCompletionHandler) {
        gnomeStore.getGnomes(completion: completion)
    }
    
}
