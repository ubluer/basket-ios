//
//  Faker.swift
//  basket-ios
//
//  Created by YuXiang on 6/30/16.
//  Copyright © 2016 YuXiang. All rights reserved.
//

import Foundation

///
/// 提供虚拟的数据
///
class Faker {
    
    static let sharedInstance = Faker()
    ///虚拟用户列
    var users = [String:User]()
    
    private init(){
        self.users = self.fakeUsers();
    }
    
    private func fakeUsers() -> [String:User]{
        var users = [String:User]()
        //初始化虚拟用户列表
        users.updateValue(User(username: "fly",password: "123456"),forKey: "fly")
        users.updateValue(User(username: "fish",password: "123456"), forKey: "fish")
        users.updateValue(User(username: "team",password: "123456"), forKey: "team")
        users.updateValue(User(username: "admin",password: "123456"), forKey: "admin")
        users.updateValue(User(username: "refer",password: "123456"), forKey: "refer")
        return users
    }
}