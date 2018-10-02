//
//  GnomeViewController+TableView.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation
import UIKit

extension GnomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return (displayGnome?.professions.count)!
        } else if section == 3 {
            return 1
        } else if section == 4 {
            return 1
        }
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        
        if section == 0 {
            return imageCell(tableView, cellForRowAt: indexPath)
        } else if section == 1 {
            return separatorCell(tableView, cellForRowAt: indexPath)
        } else if section == 2 {
            return professionCell(tableView, cellForRowAt: indexPath)
        } else if section == 3 {
            return separatorCell(tableView, cellForRowAt: indexPath)
        } else if section == 4 {
            return friendsCell(tableView, cellForRowAt: indexPath)
        }
        
        return UITableViewCell()
    }
    
    func imageCell(_ tableView : UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        if let cell: GnomeDetailCell = tableView.dequeueReusableCell(withIdentifier: "gnomeDetailCell", for: indexPath) as? GnomeDetailCell {
            if let thumbnail = displayGnome?.thumbnail, let age = displayGnome?.age, let weight = displayGnome?.weight, let height = displayGnome?.height, let hairColor = displayGnome?.hairColor {
                cell.setup(thumbnail: thumbnail, age: age, weight: weight, height: height, hairColor: hairColor)
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func separatorCell(_ tableView : UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        if let cell: SeparatorCell = tableView.dequeueReusableCell(withIdentifier: "separatorCell", for: indexPath) as? SeparatorCell {
            if indexPath.section == 1 {
                cell.setup(separator: "Professions")
            }
            
            if indexPath.section == 3 {
                cell.setup(separator: "Friends")
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func professionCell(_ tableView : UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        if let cell: ProfessionCell = tableView.dequeueReusableCell(withIdentifier: "professionCell", for: indexPath) as? ProfessionCell {
            if let professions = displayGnome?.professions {
                cell.setup(profession: professions[indexPath.row])
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func friendsCell(_ tableView : UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell {
        if let cell: FriendsCell = tableView.dequeueReusableCell(withIdentifier: "friendsCell", for: indexPath) as? FriendsCell {
            if let displayFriends = displayFriends {
                cell.displayFriends = displayFriends
                cell.friendsCollectionView.reloadData()
            }
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 166.0
        }
        
        if indexPath.section == 4 {
            return 122.0
        }
        
        return 44.0
    }
}
