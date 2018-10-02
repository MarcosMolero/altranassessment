//
//  GnomesCell.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import UIKit
import Kingfisher

class GnomesCell: UITableViewCell {

    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func setup(name: String, thumbnail: String) {
        nameLabel.text = name
        let thumbnailURL = URL(string: thumbnail)
        thumbnailImageView.kf.setImage(with: thumbnailURL)
    }
}
