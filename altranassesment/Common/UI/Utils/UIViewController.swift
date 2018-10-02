//
//  UIViewController.swift
//  altranassessment
//
//  Created by Marcos Molero on 02/10/2018.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation
import SVProgressHUD

extension UIViewController {
    
    func showHUD() {
        DispatchQueue.main.async {
            SVProgressHUD.setDefaultMaskType(SVProgressHUDMaskType.clear)
            SVProgressHUD.show()
        }
    }
    
    func hideHUD() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }
}
