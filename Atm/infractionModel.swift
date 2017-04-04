//
//  infractionModel.swift
//  Atm
//
//  Created by jaime andrade on 3/28/17.
//  Copyright © 2017 qbit. All rights reserved.
//

import Foundation

class infractionModel{
    private var _imageURL: String!
    private var _title: String!
    private var _description: String!
    private var _date: String!
    private var _city: String!
    private var _type: String!
    
    var imageURL: String{
        return _imageURL
    }
    
    var type: String{
        return _type
    }
    
    var title: String{
        return _title
    }
    
    var description: String{
        return _description
    }
    
    var date: String{
        return _date
    }
    
    var city: String{
        return _city
    }
    
    init(imageURL: String, title: String, description: String, date: String, city: String, type: String){
        _imageURL = imageURL
        _title = title
        _description = description
        _date = date
        _city = city
        _type = type
    }

}
