//
//  UserService.swift
//  basketios
//
//  Created by YuXiang on 7/2/16.
//  Copyright © 2016 YuXiang. All rights reserved.
//

import Foundation

class UserService {
    
    func login(username: String,password:String) -> Bool {
        return true
    }
    
    private func getUser(username:String,password:String) -> User{
        return Faker.sharedInstance.users[0]
    }
}