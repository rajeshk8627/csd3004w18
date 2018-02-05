//
//  customer.swift
//  term project
//
//  Created by MacStudent on 2018-02-05.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
import Foundation
class Customer : user{
    var customerName : String?
    var address : String?
    var email : String?
    var creditCardInfo : String?
    var shippingInfo : String?
    
    
    init (name : String, addr : String, em : String, credit : String, ship : String)
    {
        init (u_id : String, pass : String, los : String)
        
        self.customerName = name
        self.address = addr
        self.email = em
        self.creditCardInfo = credit
        self.shippingInfo = ship
        
    }
}

func register() {
    
}

func login() {
    
}
func updateProfile() {
    
}
