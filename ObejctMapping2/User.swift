//
//  User.swift
//  ObejctMapping2
//
//  Created by Vattanac on 12/15/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import Foundation
import ObjectMapper

class User:Mappable{
    
    var id:Int?
    var title:String?
    var image:String?
    
    required init?(map: Map) {
        
    }
    
     func mapping(map: Map) {
        id <- map["ID"]
        title <- map["TITLE"]
        image <- map["IMAGE"]
        
    }
    
    
}
