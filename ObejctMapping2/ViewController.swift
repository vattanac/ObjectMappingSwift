//
//  ViewController.swift
//  ObejctMapping2
//
//  Created by Vattanac on 12/15/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class ViewController: UIViewController {

    
    var userList = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = "http://api-ams.me/v1/api/articles?page=1&limit=15"
        let header = ["Authorization":"Basic QU1TQVBJQURNSU46QU1TQVBJUEBTU1dPUkQ="]
        
        Alamofire.request(url, method: .get, parameters: nil, headers: header).responseJSON { (response) in
            
            guard  response.result.isSuccess, let value = response.result.value else{return}
            
            var json = response.result.value as! [String:Any]
            var jsonData = json["DATA"] as! [[String:Any]]
            
            for u in jsonData{
                self.userList.append(User(JSON: u as! [String:Any])!)
                
            }
            
            for user in self.userList{
                let u = user as! User
                print(u.title!)
            }
            
            
           
    }
        


    }
    
}

