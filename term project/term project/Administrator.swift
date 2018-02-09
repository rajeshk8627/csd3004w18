//
//  Administrator.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
class Administrator : User{
    var adminName : String?
    var email : String?
    
    override init ()
    {
        super.init ()
        self.adminName = ""
        self.email = ""
        
    }
    
    init (a_name : String,em : String,u_id : String, pass : String, los : String)
    {
        super.init (u_id : u_id, pass : pass, los : los)
        self.adminName = a_name
        self.email = em
        
    }
    
    
    func updateCatalog() {
        
    }
}
