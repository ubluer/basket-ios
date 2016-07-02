//
//  User.swift
//  basketios
//
//  Created by YuXiang on 7/2/16.
//  Copyright © 2016 YuXiang. All rights reserved.
//

import Foundation

class User {
    
    var username :String 
    var password :String?
    
    init(username:String){
        self.username = username
    }
    
    init(username:String,password:String) {
        self.username = username;
        self.password = password;
    }
    
}