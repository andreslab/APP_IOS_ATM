//
//  infractionCVCell.swift
//  Atm
//
//  Created by jaime andrade on 3/28/17.
//  Copyright © 2017 qbit. All rights reserved.
//

import UIKit

class infractionCVCell: UICollectionViewCell {
    
    @IBOutlet weak var imgAccident: UIImageView!
    @IBOutlet weak var imgType: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
   
    func updateUI(infractionM: infractionModel){
        
        URLCache.shared.removeAllCachedResponses()
        URLCache.shared.diskCapacity = 0
        URLCache.shared.memoryCapacity = 0
        
        labelTitle.text = infractionM.title
        
        let url_acc = URL(string: infractionM.imageURL)!
        
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url_acc)
                DispatchQueue.global().async {
                    self.imgAccident.image = UIImage(data:data)
                }
            }catch{
                //handle error
            }
        }
        
        switch infractionM.type {
        case "tc":
            //traffic car
            let url_acc = URL(string: "http://elmanana.com.mx/imgs/noticias/original/bc558b42d29e450_40e86fdff32ee845cfe64ac15c359bba")!
            updateImage(url_: url_acc, contentImg: self.imgType)
        case "ac":
            //accident car
            NSLog("default", "infracción")
        case "sc":
            //speed car
            NSLog("default", "infracción")
        default:
            NSLog("default", "infracción")
        }
    }
    
    func updateImage(url_ : URL, contentImg: UIImageView){
        DispatchQueue.global().async {
            do{
                let data = try Data(contentsOf: url_)
                DispatchQueue.global().async {
                    contentImg.image = UIImage(data:data)
                }
            }catch{
                //handle error
            }
        }
    }
    
    
}
