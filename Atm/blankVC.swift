//
//  blankVC.swift
//  Atm
//
//  Created by jaime andrade on 3/30/17.
//  Copyright © 2017 qbit. All rights reserved.
//

import UIKit

class blankVC: ViewController {

    @IBOutlet weak var textF: UILabel!
    var tx = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        textF.text = tx
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
