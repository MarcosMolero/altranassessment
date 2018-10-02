//
//  GnomeViewController.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright (c) 2018 Marcos Molero. All rights reserved.
//
//  This file was generated by the Clean Swift HELM Xcode Templates

import UIKit

protocol GnomeDisplayLogic: class {
    func displayGnome(viewModel: GnomeScene.GetGnome.ViewModel)
}

class GnomeViewController: UIViewController, GnomeDisplayLogic {
    
    var interactor: GnomeBusinessLogic?
    var router: (GnomeRoutingLogic & GnomeDataPassing)?
    var dependencyInjector:SceneDependencyInjector! = GnomeDependencyInjector()
    
    // MARK: Object lifecycle
    var displayGnome: GnomeScene.GetGnome.DisplayGnome?
    var displayFriends: [GnomeScene.GetGnome.DisplayFriend]?
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    private func setup() {
        dependencyInjector.inject(to:self)
    }
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        getGnome()
    }
    
    // MARK: Requests
    func getGnome() {
        let request = GnomeScene.GetGnome.Request()
        interactor?.getGnome(request: request)
    }
    
    // MARK: Display logic
    func displayGnome(viewModel: GnomeScene.GetGnome.ViewModel) {
        self.navigationItem.title = viewModel.displayGnome.name
        self.displayGnome = viewModel.displayGnome
        self.displayFriends = viewModel.displayFriends
    }
    
}

extension GnomeViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router?.passDataToNextScene(for: segue)
    }
}