//
//  GnomesViewController+SearchBar.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation
import UIKit

extension GnomesViewController: UISearchResultsUpdating {

    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text!)
    }
    
    func filterContentForSearchText(searchText: String, scope: String = "All") {
        filterGnomes = displayGnomes.filter({ (displayGnome) -> Bool in
            return displayGnome.name.lowercased().contains(searchText.lowercased())
        })
        gnomesTableView.reloadData()
    }
    
    func isFiltering() -> Bool {
        return searchController.isActive && searchController.searchBar.text! != ""
    }
}


