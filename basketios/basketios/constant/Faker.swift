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
    ///虚拟用户列表
    var users = [User]()
    
    private init(){
        self.users = self.fakeUsers();
    }
    
    private func fakeUsers() -> [User]{
        var users = [User]()
        //初始化虚拟用户列表
        users.append(User(username: "fly",password: "123456"))
        users.append(User(username: "fish",password: "123456"))
        users.append(User(username: "team",password: "123456"))
        users.append(User(username: "admin",password: "123456"))
        users.append(User(username: "refer",password: "123456"))
        return users
    }
}