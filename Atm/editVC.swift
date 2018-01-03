//
//  editVC.swift
//  Atm
//
//  Created by jaime andrade on 3/30/17.
//  Copyright © 2017 qbit. All rights reserved.
//

import UIKit
import AVFoundation

class editVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    

    @IBOutlet weak var imgEditing: UIImageView!
    @IBOutlet weak var btnLocate: UIButton!
    @IBOutlet weak var btnImage: UIButton!
    
    var imagePicker:UIImagePickerController!
    var imgSend: UIImage!
    
    var valueOpen = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        if(valueOpen){
            openCamera()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    
    
    @IBAction func btnActionImage(_ sender: Any) {
        openCamera()
    }
    
    func openCamera(){
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera){
            imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        valueOpen = false
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        imagePicker.dismiss(animated: true, completion: nil)
        let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        imgEditing.image = image
    }
   
    
    @IBAction func btnActionCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        performSegue(withIdentifier: "toMain", sender: self)
        
    }

   

}
