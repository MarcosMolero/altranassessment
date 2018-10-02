//
//  LabelCell.swift
//  altranassessment
//
//  Created by Marcos Molero on 01/10/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import UIKit

class SeparatorCell: UITableViewCell {

    @IBOutlet weak var separatorLabel: UILabel!
    
    func setup(separator: String) {
        separatorLabel.text = separator
    }
    
}
