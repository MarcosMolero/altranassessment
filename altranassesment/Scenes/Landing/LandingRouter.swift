//
//  LandingRouter.swift
//  altranassessment
//
//  Created by Marcos Molero on 23/6/18.
//  Copyright (c) 2018 Marcos Molero. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates

import UIKit

protocol LandingRoutingLogic {
    func routeToGnomes()
}

protocol LandingDataPassing {
    func passDataToNextScene(for segue:UIStoryboardSegue)
    var dataStore: LandingDataStore? { get }
}

class LandingRouter: LandingRoutingLogic, LandingDataPassing {
    
    weak var viewController: LandingViewController?
    var dataStore: LandingDataStore?
    
    struct SegueIdentifiers {
        static let showGnomes = "showGnomes"
    }
    
    // MARK: Navigation
    func routeToGnomes() {
        viewController?.performSegue(withIdentifier: SegueIdentifiers.showGnomes, sender: nil)
    }
    
    // MARK: Communication
    func passDataToNextScene(for segue: UIStoryboardSegue) {
        // NOTE: Teach the router which scenes it can communicate with
        guard let segueIndentifier = segue.identifier else {
            return
        }
        
        switch segueIndentifier {
        case SegueIdentifiers.showGnomes:
            passDataToGnomesScene(for: segue)
        default:
            return
        }
    }
    
    func passDataToGnomesScene(for segue: UIStoryboardSegue) {
        if let gnomesViewController = segue.destination as? GnomesViewController {
            var destinationDataStore = gnomesViewController.router?.dataStore
            destinationDataStore?.gnomes = dataStore?.gnomes
        }
    }
    
}
