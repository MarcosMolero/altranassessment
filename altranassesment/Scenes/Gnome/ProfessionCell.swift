//
//  professionCell.swift
//  altranassessment
//
//  Created by Marcos Molero on 01/10/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import UIKit

class ProfessionCell: UITableViewCell {

    @IBOutlet weak var professionLabel: UILabel!

    func setup(profession: String) {
        professionLabel.text = profession
    }
}
