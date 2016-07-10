//
//  UserService.swift
//  basketios
//
//  Created by YuXiang on 7/2/16.
//  Copyright © 2016 YuXiang. All rights reserved.
//

import Foundation

class UserService {
    
    static func login(username username: String,password:String) -> Bool {
        if let user = getUser(username: username) {
            if authenticate(user, password:password){
                Session.sharedInstance.currentUser = user;
                return true
            }
        }
        return false
    }
    
    ///获取通过用户名信息
    private static func getUser(username username:String) -> User?{
        return Faker.sharedInstance.users[username]
    }
    
    private static func authenticate(user:User,password:String) -> Bool{
        if let pswInData = user.password {
            if pswInData == password {
                return true
            }
        }
        return false
    }
    
    static func logout(){
        Session.sharedInstance.currentUser = nil
    }

}