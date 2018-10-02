//
//  BusinessAssembly.swift
//  altranassessment
//
//  Created by Marcos Molero on 23/6/18.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation
import Swinject

class BusinessAssembly: Assembly {
    var container:Container!
    
    func assemble(container: Container) {
        self.container = container
        registerInteractors()
        registerWorkers()

    }
    // ============================ INTERACTORS ============================
    private func registerInteractors() {
        registerLandingInteractor()
        registerGnomesInteractor()
        registerGnomeInteractor()
    }
    
    // =====================================================================
    private func registerLandingInteractor() {
        container.register(LandingInteractor.self) { container in
            let gnomeStoreWorker = container.resolve(GnomeStoreWorker.self)!
            let interactor = LandingInteractor()
            interactor.gnomeStoreWorker = gnomeStoreWorker
            
            return interactor
        }
    }
    
    private func registerGnomesInteractor() {
        container.register(GnomesInteractor.self) { container in
            let interactor = GnomesInteractor()
            return interactor
        }
    }
    
    private func registerGnomeInteractor() {
        container.register(GnomeInteractor.self) { container in
            let interactor = GnomeInteractor()
            return interactor
        }
    }
    
    // ============================ WORKERS ================================
    private func registerWorkers() {
        registerGnomeStoreWorker()
    }
    
    // =====================================================================

    private func registerGnomeStoreWorker() {
        container.register(GnomeStoreWorker.self) { container in
            let store = container.resolve(GnomeStore.self)!
            let gnomeStoreWorker = GnomeStoreWorker(store: store)
            
            return gnomeStoreWorker
        }
    }
}
