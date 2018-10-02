//
//  GnomesViewController+TableView.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation
import UIKit

extension GnomesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isFiltering() {
            return filterGnomes.count
        } else {
            return displayGnomes.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: GnomesCell = tableView.dequeueReusableCell(withIdentifier: "gnomesCell", for: indexPath) as? GnomesCell {
            if isFiltering()  {
                cell.setup(name: filterGnomes[indexPath.row].name, thumbnail: filterGnomes[indexPath.row].thumbnail)
                return cell
            } else {
                cell.setup(name: displayGnomes[indexPath.row].name, thumbnail: displayGnomes[indexPath.row].thumbnail)
                return cell
            }
        }
        
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let request = GnomesScene.SaveGnomeID.Request(id: displayGnomes[indexPath.row].id)
        interactor?.saveGnomeID(request: request)
        router?.routeToGnome()
    }
}
