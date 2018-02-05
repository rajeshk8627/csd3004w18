//
//  user.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class User{
    var userId : String?
    var password : String?
    var loginStatus : String?
    
    
    init (u_id : String, pass : String, los : String)
    {
        self.userId = u_id
        self.password = pass
        self.loginStatus = los
        
    }
}

func verifyLogin(){
    
}
