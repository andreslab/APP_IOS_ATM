//
//  ViewController.swift
//  Atm
//
//  Created by jaime andrade on 3/28/17.
//  Copyright © 2017 qbit. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var galleryCollection: UICollectionView!
    
    var infraction = [infractionModel]()
    var value_section = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let item1 = infractionModel(imageURL: "http://elmanana.com.mx/imgs/noticias/original/bc558b42d29e450_40e86fdff32ee845cfe64ac15c359bba", title: "Zona prohibida", description: "Auto estacionado enuna zona prohibida", date: "12-11-16", city: "Guayaquil", type: "ac")
        let item2 = infractionModel(imageURL: "http://laley.pe/upload/img/periodico/img_6995.jpg", title: "Zona prohibida", description: "Auto estacionado enuna zona prohibida", date: "12-11-16", city: "Guayaquil", type: "ac")
        let item3 = infractionModel(imageURL: "http://www.eluniversal.com.co/sites/default/files/infractor.jpg", title: "Zona prohibida", description: "Auto estacionado enuna zona prohibida", date: "12-11-16", city: "Guayaquil", type: "ac")
        let item4 = infractionModel(imageURL: "http://www.eluniverso.com/sites/default/files/styles/nota_ampliada_normal_foto/public/fotos/2015/01/pr12mn080115photo04.jpg?itok=-sBBo37y", title: "Zona prohibida", description: "Auto estacionado enuna zona prohibida", date: "12-11-16", city: "Guayaquil", type: "ac")
        let item5 = infractionModel(imageURL: "http://elmanana.com.mx/imgs/noticias/original/bc558b42d29e450_40e86fdff32ee845cfe64ac15c359bba", title: "Zona prohibida", description: "Auto estacionado enuna zona prohibida", date: "12-11-16", city: "Guayaquil", type: "ac")
        let item6 = infractionModel(imageURL: "http://elmanana.com.mx/imgs/noticias/original/bc558b42d29e450_40e86fdff32ee845cfe64ac15c359bba", title: "Zona prohibida", description: "Auto estacionado enuna zona prohibida", date: "12-11-16", city: "Guayaquil", type: "ac")
        
        infraction.append(item1)
        infraction.append(item2)
        infraction.append(item3)
        infraction.append(item4)
        infraction.append(item5)
        infraction.append(item6)
        
        galleryCollection.dataSource = self
        galleryCollection.delegate = self
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellgrid", for: indexPath) as? infractionCVCell{
           
            var valueIncrement = 0
            
            
            valueIncrement = indexPath.section * 2 + indexPath.row
            
            
            let temp = infraction[valueIncrement]
            cell.updateUI(infractionM: temp)
            
            
            
            return cell
        }else{
            return UICollectionViewCell()
        }
    }
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return infraction.count / 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    
    @IBAction func openCamera(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "toEdit", sender: self)
        
    }
    
    
    @IBAction func btnActionPerson(_ sender: Any) {
        performSegue(withIdentifier: "toUser", sender: self)
    }
    
    
    
    
   
    
    


}

