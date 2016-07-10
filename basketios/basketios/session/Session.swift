//
//  Session.swift
//  basketios
//
//  Created by YuXiang on 7/3/16.
//  Copyright © 2016 YuXiang. All rights reserved.
//

import Foundation

class Session {
    
    static let sharedInstance = Session()
    var currentUser:User?
    
    private init() {
        
    }
    
    func isLogin() -> Bool {
        return currentUser == nil
    }

}