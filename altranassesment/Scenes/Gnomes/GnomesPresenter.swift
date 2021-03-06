//
//  GnomesPresenter.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright (c) 2018 Marcos Molero. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates

protocol GnomesPresentationLogic {
    func presentGnomes(response: GnomesScene.GetGnomesFromDataStore.Response)
}

class GnomesPresenter: GnomesPresentationLogic {
    
    weak var viewController: GnomesDisplayLogic?
    
    // MARK: Presentation logic
    func presentGnomes(response: GnomesScene.GetGnomesFromDataStore.Response) {
        let viewModel = mapResponseToViewModel(response: response)
        viewController?.displayGnomes(viewModel: viewModel)
    }
    
    func mapResponseToViewModel(response: GnomesScene.GetGnomesFromDataStore.Response) -> GnomesScene.GetGnomesFromDataStore.ViewModel {
        var displayGnomes: [GnomesScene.GetGnomesFromDataStore.DisplayGnomes] = []
        
        for gnome in response.gnomes {
            let displayGnome = GnomesScene.GetGnomesFromDataStore.DisplayGnomes(id: gnome.id, name: gnome.name!, thumbnail: gnome.thumbnail!)
            displayGnomes.append(displayGnome)
        }
        
        return GnomesScene.GetGnomesFromDataStore.ViewModel(displayGnomes: displayGnomes)
    }
}
