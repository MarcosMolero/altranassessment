//
//  GnomeDetailCell.swift
//  altranassessment
//
//  Created by Marcos Molero on 30/09/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import UIKit

class GnomeDetailCell: UITableViewCell {

    
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    
    func setup(thumbnail: String, age: Int, weight: Double, height: Double, hairColor: String) {
        
        let thumbnailURL = URL(string: thumbnail)!
        thumbnailImageView.kf.setImage(with: thumbnailURL)
        ageLabel.text = String(age) + " years"
        weightLabel.text = String(format: "%.2f", weight) + " Kg"
        heightLabel.text = String(format: "%.2f", height) + " cm"
        hairColorLabel.text = String(hairColor) + " hair"
    }
    
}
