//
//  administrator.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Administrator : User{
    var adminName : String
    var email : String
    
    override init ()
    {
        self.adminName = ""
        self.email = ""
        super.init()
    }
    
    
    
    init (a_name : String,em : String,u_id : String, pass : String, los : String)
    {
        self.adminName = a_name
        self.email = em
        super.init (u_id : u_id, pass : pass, los : los)
    }
   
   func DisData() -> String
    {
        print("Name of Admin is: ",adminName)
        print("Email of admin is: ",email)
        return ""
    }
    
    
    
    
    
    
    
    
    func updateCatalog()
    {
        
    }

}


