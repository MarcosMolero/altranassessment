//
//  FriendsCell.swift
//  altranassessment
//
//  Created by Marcos Molero on 01/10/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var friendsCollectionView: UICollectionView! {
        didSet {
            friendsCollectionView.delegate = self
            friendsCollectionView.dataSource = self
        }
    }
    
    var displayFriends: [GnomeScene.GetGnome.DisplayFriend] = []
}

extension FriendsCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return displayFriends.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell: FriendsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendsCollectionViewCell", for: indexPath) as? FriendsCollectionViewCell {
            cell.setup(name: displayFriends[indexPath.row].name, thumbnail: displayFriends[indexPath.row].thumbnail)
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
}
