//
//  GnomesInteractor.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright (c) 2018 Marcos Molero. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates

protocol GnomesBusinessLogic {
    func getGnomesFromDataStore(request: GnomesScene.GetGnomesFromDataStore.Request)
    func saveGnomeID(request: GnomesScene.SaveGnomeID.Request)
}

protocol GnomesDataStore {
    var gnomes: [Gnome]? {get set}
    var id: Int? {get set}
}

class GnomesInteractor: GnomesBusinessLogic, GnomesDataStore {
    
    var presenter: GnomesPresentationLogic?
    var gnomes: [Gnome]?
    var id: Int?
    
    // MARK: Business logic
    func getGnomesFromDataStore(request: GnomesScene.GetGnomesFromDataStore.Request) {
        let response = GnomesScene.GetGnomesFromDataStore.Response(gnomes: gnomes!)
        presenter?.presentGnomes(response: response)
    }
    
    func saveGnomeID(request: GnomesScene.SaveGnomeID.Request) {
        self.id = request.id
        
    }

}