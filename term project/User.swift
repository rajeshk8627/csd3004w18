//
//  user.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class User : Display
{
    var userId : String
    var password : String
    var loginStatus : String
    
    init ()
    {
        self.userId = ""
        self.password = ""
        self.loginStatus = ""
        
    }
    
    
    
    init (u_id : String, pass : String, los : String)
    {
        self.userId = u_id
        self.password = pass
        self.loginStatus = los
        
    }

    func DisData() -> String
    {
        print("User Id ",userId)
        print("Password: ",password)
        print("Status: ",loginStatus)
        return ""
    }
    

func verifyLogin(inputUserId: String, inputPassword: String) -> Bool
{
    if self.userId == inputUserId {
        if self.password == inputPassword{
            loginStatus = "Sucessfull"
            print("\n")
            print("You are sucessfully logged in")
            print("\n")
            let goAccount = Customer()
            goAccount.InAccount(inputUserId: inputUserId)
        }
    }
    else {
        loginStatus = "Unsucessfull"
        print("Invalid username and password")
        print("/n")
        let goLogin = Customer()
        goLogin.login()
    }
    return true
    
    
    
    
    
}
}
