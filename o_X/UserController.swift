//
//  UserController.swift
//  o_X
//
//  Created by Uday Alla on 6/30/16.
//  Copyright © 2016 iX. All rights reserved.
//

import Foundation
class UserController {
    static var sharedInstance = UserController()
    let defaults = NSUserDefaults.standardUserDefaults()
    private var users = [User]()
    var currentUser: User?
    func register(email: String, password: String, onCompletion: (User?, String?) -> Void){
        
        if(password.characters.count>=6 && email != ""){
            defaults.setObject(email, forKey: "currentUserEmail")
            defaults.setObject(password, forKey: "currentUserPassword")
            defaults.synchronize()
            let user = User()
            user.email=email
            user.password=password
            onCompletion(user,nil)
            users.append(user)
            currentUser=user
        }
        else {
            onCompletion(nil,"User Registration Failed")
        }
    }
    func login(email: String, password: String, onCompletion: (User?, String?) -> Void){
        
        for user in users {
            if user.email == email && user.password == password {
                defaults.setObject(email, forKey: "currentUserEmail")
                defaults.setObject(password, forKey: "currentUserPassword")
                defaults.synchronize()
                currentUser = user
                onCompletion(user, nil)
                return
            }
        }
        onCompletion(nil,"Incorrect Username and Password")
        
        
    }
    func logout(onCompletion: (String?) -> Void){
        defaults.removeObjectForKey("currentUserEmail")
        defaults.removeObjectForKey("currentUserPassword")
        defaults.synchronize()
        currentUser=nil
        onCompletion(nil)
    }
   
}