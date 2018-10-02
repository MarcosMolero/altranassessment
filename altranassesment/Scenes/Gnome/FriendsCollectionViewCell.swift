//
//  FriendsCollectionViewCell.swift
//  altranassessment
//
//  Created by Marcos Molero on 01/10/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import UIKit

class FriendsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(name: String, thumbnail: String) {
        let thumbnailURL = URL(string: thumbnail)
        thumbnailImageView.kf.setImage(with: thumbnailURL)
        nameLabel.text = name
    }
    
}
