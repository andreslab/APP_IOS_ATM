//
//  CornerButtonStyle.swift
//  Atm
//
//  Created by jaime andrade on 4/4/17.
//  Copyright © 2017 qbit. All rights reserved.
//

import UIKit
@IBDesignable
class CornerButtonStyle: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 50.0 {
    
        didSet{
           setupView()
        }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView(){
        layer.cornerRadius = cornerRadius
    }

}
