//
//  AuthService.swift
//  smack
//
//  Created by Sayooj Sojen on 11/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import Foundation

class  AuthService{
    static let selfInstance=AuthService()
    //singleton
    
    //declare some userdefaults to keep in memory persistance, so that you dont have to keep logging in at every session
    
    let defaults=UserDefaults.standard //An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app.
    
    
}
