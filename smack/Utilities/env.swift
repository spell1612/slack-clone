//
//  ENVConstants.swift
//  smack
//
//  Created by Sayooj Sojen on 11/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ success: Bool)->() //typealias is basically #define
//(_ success: Bool)->() is called a closure func, used to acertain whether something happenned. It accepts bool as param and returns nothing

//user global defaults
let LOGGED_IN_KEY="loggedIn"
let TOKEN="token"
let USER_EMAIL="userEmail"

//API URLS
let API_URL="https://spellslackchat.herokuapp.com/v1/"
let REGISTER_USER="\(API_URL)account/register"
