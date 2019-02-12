//
//  AuthService.swift
//  smack
//
//  Created by Sayooj Sojen on 11/02/19.
//  Copyright © 2019 spell. All rights reserved.
//

//A singleton service to handle request/response to an API to get data

import Foundation
import Alamofire

class  AuthService{
    static let selfInstance=AuthService()
    //singleton
    
    //declare some userdefaults to keep in memory persistance, so that you dont have to keep logging in at every session
    
    let defaults=UserDefaults.standard //An interface to the user’s defaults database, where you store key-value pairs persistently across launches of your app.
    
    var isLoggedIn: Bool{
        get{
            return defaults.bool(forKey: LOGGED_IN_KEY) //this checks logged in key from the constants utility and returns true/false depending on whether it has value or not
        }
        set{
            defaults.set(newValue, forKey: LOGGED_IN_KEY) //get;set; is used to define what happens whne the var is accessed.
            //if it is accessed to write, that which is written in set is called, else if it is acessed to read, code in get is executed
        }
    }
    
    var authToken: String{
        get{
            return defaults.value(forKey: TOKEN) as! String
        }
        set{
            defaults.set(newValue, forKey: TOKEN)
        }
    }
    
    var getEmail: String{
        get{
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        set{
            defaults.set(newValue, forKey: USER_EMAIL)
        }
        //the var newValue is preset in swift, it takes in the value when a var is being set through get;set
        
    }
    //these get;set;s are used to securely accesss the constants in the utilities folder
    
    func resgisterUser(email: String, password: String, completion: @escaping CompletionHandler) {
        let lowerCaseEmail=email.lowercased()
        
        let header = [   //we need a header to pass additional info like keys and tokens within the request
            "Content-Type":"application/json; charset=utf-8"
            
        ]
        
        let body: [String:Any]=[
            "email":lowerCaseEmail,
            "password":password
        ] //created a jsonlike with dictionary in swift. know what you need to send to api beforehand
        
        Alamofire.request(REGISTER_USER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header).responseString { (response) in //response is the datastructure in which the  response details are passed over
            if response.result.error==nil{
                completion(true) //custom completion handler var
            }else{
                completion(false)
                debugPrint(response.result.error as Any) 
            }
        }//body is the dict being sent. the resp
        
        
    }
    
}
