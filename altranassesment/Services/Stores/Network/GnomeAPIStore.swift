//
//  GnomeAPIStore.swift
//  altranassessment
//
//  Created by Marcos Molero on 23/6/18.
//  Copyright © 2018 Marcos Molero. All rights reserved.
//

import Foundation


class GnomeAPIStore: GnomeStore {
    
    func getGnomes(completion: @escaping GnomeStoreGetGnomesCompletionHandler) {
        guard let url = URL(string: Constants.API.Gnomes.url) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            var result: GnomeStoreResult<[Gnome]>

            guard let data = data, error == nil else {
                result = .failure(error: GnomeStoreError.cannotGet("Cannot get Gnomes: \(error.debugDescription)"))
                completion(result)
                return
            }
            
            do {
                let dictionary = try JSONSerialization.jsonObject(with: data) as! [String:Any]
                let values = dictionary["Brastlewark"] as! [[String:Any]]

                var gnomes: [Gnome] = []
                for item in values {
                    let gnome = Gnome(fromDictionary: item)
                    gnomes.append(gnome!)
                }
                
                result = .success(result: gnomes)
                completion(result)
            } catch let parseError {
                debugPrint(parseError.localizedDescription)
            }
        }.resume()
    }
    
} 
